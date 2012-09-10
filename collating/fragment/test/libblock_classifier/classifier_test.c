#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>

#include "classify_collect.h"

#if 0
#define PATH_IMAGE "../../../../data/image_ref_h264_ntfs_formatted.img"
#elif 0
#define PATH_IMAGE "../../../../data/image_ref_h264_ntfs.img"
#elif 1
#define PATH_IMAGE "../../../../data/usbkey.dd"
#endif
#define PATH_MAGIC "../../data/magic/media.mgc"

int main(void)
{
    /* calculate image size */
    struct stat lStat;
    stat(PATH_IMAGE, &lStat);

    /* invoke file-type classification */
    fragment_collection_t* lCollection = classify_tsk(
            lStat.st_size /* file size */,
            512 /* block size */, 
            0 /* number of blocks */,  /* later ignored */
            PATH_IMAGE /* image path */,
            0 /* offset */,  /* ignored */
            NULL /* ClassifyT* pTypes */, 
            0 /* int pNumTypes */,
            32 /* block gap */,
            4 /* min fragment size */,
            PATH_MAGIC /* path to magic database file */,
            4 /* num threads */);

    fragment_collection_free(lCollection);

    return EXIT_SUCCESS;
}