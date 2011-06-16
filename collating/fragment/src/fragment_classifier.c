#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <dirent.h>
#include <string.h>
#include <time.h>
#include <math.h>

#include "fragment_classifier.h"

/* set to 0 to turn of ncd testing */
#define TEST_NCD 1

#define STRLEN_PATH 1024

#if TEST_NCD == 1
#include "ncd.h"
#define MAX_NUM_FILE_TYPES 16
#define NUM_FRAGS_PER_FILE_TYPE 10
#define FRAGS_REF_DIR "/tmp/frags_ref"
#define MAX_DIR_ENT 256
#endif

struct _FragmentClassifier
{
    unsigned int mFragmentSize;
#if TEST_NCD == 1
    unsigned char* mReferenceFrags[MAX_NUM_FILE_TYPES][NUM_FRAGS_PER_FILE_TYPE];
#endif
};

#if TEST_NCD == 1
static const char *sTypes[] = { ".txt", ".html", ".svg", ".h264", "" };
struct SNearest
{
    int mIdxTypeNearest;
    double mValNearest;
};
#endif

/* static const char *sTypes[] = { ".txt", "" }; */

#if TEST_NCD == 1
static int check_ncd(FragmentClassifier* pFragmentClassifier, 
    const unsigned char* pFragment);
int readRandFrag(unsigned char*, int, const char*, const char*);
#endif

FragmentClassifier* fragment_classifier_new(const char* pFilename, 
        unsigned int pFragmentSize)
{
#if TEST_NCD == 1
    int lCntX = 0, lCntY = 0;
#endif

    /* initialize handle structure */
    struct _FragmentClassifier* lHandle = 
        (struct _FragmentClassifier*)malloc(sizeof(struct _FragmentClassifier));

    lHandle->mFragmentSize = pFragmentSize;

#if TEST_NCD == 1
    srandom(time(NULL));
    for (lCntX = 0; lCntX < MAX_NUM_FILE_TYPES && strlen(sTypes[lCntX]) > 0 ; lCntX++)
    {
        for (lCntY = 0; lCntY < NUM_FRAGS_PER_FILE_TYPE; lCntY++)
        {
            lHandle->mReferenceFrags[lCntX][lCntY] = 
                (unsigned char*)malloc(sizeof(unsigned char) * pFragmentSize);
            /* randomly open file, random seek, read reference fragment */
            readRandFrag(lHandle->mReferenceFrags[lCntX][lCntY], pFragmentSize, FRAGS_REF_DIR, sTypes[lCntX]); 
        }
    }
#endif


    return lHandle;
}

void fragment_classifier_free(FragmentClassifier* pFragmentClassifier)
{
#if TEST_NCD == 1
    int lCntX = 0, lCntY = 0;

    /* free resources from the structure */
    for (lCntX = 0; lCntX < MAX_NUM_FILE_TYPES && strlen(sTypes[lCntX]) > 0; lCntX++)
    {
        for (lCntY = 0; lCntY < NUM_FRAGS_PER_FILE_TYPE; lCntY++)
        {
            free(pFragmentClassifier->mReferenceFrags[lCntX][lCntY]);
        }
    }
#endif
    free(pFragmentClassifier);
}

int fragment_classifier_classify(FragmentClassifier* pFragmentClassifier, 
        const unsigned char* pFragment)
{
    if (1 == 0 /* check for signatures */)
    {
        
    }
    else if (1 == 0 /* check statistics */)
    {
        return 0;
    }
#if TEST_NCD == 1
    /* else if (check_ncd(pFragmentClassifier, pFragment) == 0) */
    else
    {
        check_ncd(pFragmentClassifier, pFragment);
        /* TODO not relevant fragment */
        return 0;
    }
#endif
    /* do further tests here */

    /* relevant fragment */
    return 1;
}

#if TEST_NCD == 1
static int check_ncd(FragmentClassifier* pFragmentClassifier, 
    const unsigned char* pFragment)
{
    /* FileType counter */
    int lCntFT = 0;
    int lCntFrag = 0;
    struct SNearest lNearest = { -1, INFINITY };
    double lNCDResult = INFINITY;

    for (lCntFT = 0; lCntFT < MAX_NUM_FILE_TYPES && strlen(sTypes[lCntFT]) > 0; lCntFT++)
    {
        /* determine first nearest neighbor */
        for (lCntFrag = 0; lCntFrag < NUM_FRAGS_PER_FILE_TYPE; lCntFrag++)
        {
            lNCDResult = ncd(pFragment, 
                    pFragmentClassifier->mReferenceFrags[lCntFT][lCntFrag], 
                    pFragmentClassifier->mFragmentSize);

            if (lNCDResult < lNearest.mValNearest)
            {
                lNearest.mIdxTypeNearest = lCntFT;
                lNearest.mValNearest = lNCDResult;
            }
        }
    }
    /* TODO 
     * determine biggest distance if filetype is correct
     * determine nearest distance if filetype is incorrect
     */
    fprintf(stderr, "NCD Nearest Neighbor %f | Type: %s\n",
            lNearest.mValNearest, 
            sTypes[lNearest.mIdxTypeNearest]);

    /* keep on processing this fragment */
    return 1;
}

int readRandFrag(unsigned char* pBuf, int pFragmentSize, 
        const char* pDir, const char* pFileExt)
{
    DIR* lDH = NULL;
    FILE* lRandomFH = NULL;
    struct dirent* lCurDir = NULL;
    struct dirent lDirEnts[MAX_DIR_ENT];
    int lCnt = 0;
    struct stat lInfo;
    char lFullPath[STRLEN_PATH];
    long lFileSize = 0;
    long lNumFrags = 0;
    long int lRandIdx = 0;

    lDH = opendir(pDir);
    if (lDH == NULL)
    {
        closedir(lDH);
        return -1;
    }

    for(; lCnt < MAX_DIR_ENT;)
    {
        lCurDir = readdir(lDH);
        if (lCurDir == NULL)
        {
            break;
        }
        else
        {

            stat(lCurDir->d_name, &lInfo);
            if (S_ISREG(lInfo.st_mode))
            {
                /* check file extension */
                if (strstr((lCurDir->d_name + strlen(lCurDir->d_name) - strlen(pFileExt) - 1), 
                            pFileExt) != NULL)
                {
                    lDirEnts[lCnt] = *lCurDir;
                    lCnt++;
                }
            }
        }
    }

    if (lCnt > 0)
    {
        lRandIdx = random() % lCnt;

        strcpy(lFullPath, pDir);
        strcat(lFullPath, "/");
        strcat(lFullPath, lDirEnts[lRandIdx].d_name);
        lRandomFH = fopen(lFullPath, "rb");

        fseek(lRandomFH, 0, SEEK_END);
        lFileSize = ftell(lRandomFH);
        lNumFrags = lFileSize / pFragmentSize;
        if (lFileSize % pFragmentSize != 0)
        {
            lNumFrags++;
        }
        fseek(lRandomFH, (random() % (lNumFrags - 2) + 1) * pFragmentSize, SEEK_SET);
        fread(pBuf, 1, pFragmentSize, lRandomFH);
        
        fclose(lRandomFH);
    }

    return (lCnt > 0 ? 1 : 0);
}
#endif

