; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Multimedia File Carver"
!define PRODUCT_VERSION "0.4"
!define PRODUCT_PUBLISHER "St. Poelten University of Applied Sciences"
!define PRODUCT_WEB_SITE "http://www.fhstp.ac.at"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\ffmpeg.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"
!define PRODUCT_STARTMENU_REGVAL "NSIS:StartMenuDir"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "gui\icon_mm_carver.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "debian\copyright"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Start menu page
var ICONS_GROUP
!define MUI_STARTMENUPAGE_NODISABLE
!define MUI_STARTMENUPAGE_DEFAULTFOLDER "Multimedia File Carver"
!define MUI_STARTMENUPAGE_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_STARTMENUPAGE_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "${PRODUCT_STARTMENU_REGVAL}"
!insertmacro MUI_PAGE_STARTMENU Application $ICONS_GROUP
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "..\setup.exe"
InstallDir "$PROGRAMFILES\Multimedia File Carver"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Section "Main Program" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite ifnewer
  File "mm_context.py"
  File "mm_carver_impl.py"
  SetOutPath "$INSTDIR\bin"
  SetOverwrite try
  File "bin\avcodec-53.dll"
  File "bin\avdevice-53.dll"
  File "bin\avfilter-2.dll"
  File "bin\avformat-53.dll"
  File "bin\avutil-51.dll"
  File "bin\ffmpeg.exe"
  File "bin\fsstat.exe"
  File "bin\libewf.dll"
  File "bin\postproc-51.dll"
  File "bin\swresample-0.dll"
  File "bin\swscale-2.dll"
  File "bin\zlib1.dll"
  SetOutPath "$INSTDIR\collating\fragment\build\temp.win-amd64-2.7\Release"
  File "collating\fragment\build\temp.win-amd64-2.7\Release\fragment_context.exp"
  File "collating\fragment\build\temp.win-amd64-2.7\Release\fragment_context.lib"
  File "collating\fragment\build\temp.win-amd64-2.7\Release\fragment_context.obj"
  File "collating\fragment\build\temp.win-amd64-2.7\Release\fragment_context.pyd.manifest"
  SetOutPath "$INSTDIR\collating\fragment"
  File "collating\fragment\cfragment_context.pxd"
  File "collating\fragment\fragment_classifier.obj"
  File "collating\fragment\fragment_context.c"
  File "collating\fragment\fragment_context.pyd"
  File "collating\fragment\fragment_context.pyx"
  SetOutPath "$INSTDIR\collating\fragment\include"
  File "collating\fragment\include\dirent_ms.h"
  File "collating\fragment\include\fragment_classifier.h"
  File "collating\fragment\include\inttypes.h"
  File "collating\fragment\include\ncd.h"
  File "collating\fragment\include\stdint_ms.h"
  SetOutPath "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dll32\demo"
  File "collating\fragment\lib\zlib-1.2.5\dll32\demo\miniunz.exe"
  File "collating\fragment\lib\zlib-1.2.5\dll32\demo\minizip.exe"
  File "collating\fragment\lib\zlib-1.2.5\dll32\demo\testzlib.exe"
  SetOutPath "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dll32"
  File "collating\fragment\lib\zlib-1.2.5\dll32\zlibwapi.dll"
  File "collating\fragment\lib\zlib-1.2.5\dll32\zlibwapi.exp"
  File "collating\fragment\lib\zlib-1.2.5\dll32\zlibwapi.lib"
  File "collating\fragment\lib\zlib-1.2.5\dll32\zlibwapi.map"
  SetOutPath "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dllx64\demo"
  File "collating\fragment\lib\zlib-1.2.5\dllx64\demo\miniunz.exe"
  File "collating\fragment\lib\zlib-1.2.5\dllx64\demo\minizip.exe"
  File "collating\fragment\lib\zlib-1.2.5\dllx64\demo\testzlib.exe"
  SetOutPath "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dllx64"
  File "collating\fragment\lib\zlib-1.2.5\dllx64\zlibwapi.dll"
  File "collating\fragment\lib\zlib-1.2.5\dllx64\zlibwapi.exp"
  File "collating\fragment\lib\zlib-1.2.5\dllx64\zlibwapi.lib"
  File "collating\fragment\lib\zlib-1.2.5\dllx64\zlibwapi.map"
  SetOutPath "$INSTDIR\collating\fragment\lib\zlib-1.2.5"
  File "collating\fragment\lib\zlib-1.2.5\readme.txt"
  SetOutPath "$INSTDIR\collating\fragment\lib\zlib-1.2.5\static32"
  File "collating\fragment\lib\zlib-1.2.5\static32\zlibstat.lib"
  SetOutPath "$INSTDIR\collating\fragment\lib\zlib-1.2.5\staticx64"
  File "collating\fragment\lib\zlib-1.2.5\staticx64\zlibstat.lib"
  SetOutPath "$INSTDIR\collating\fragment\lib\zlib-1.2.5"
  File "collating\fragment\lib\zlib-1.2.5\zconf.h"
  File "collating\fragment\lib\zlib-1.2.5\zlib.h"
  SetOutPath "$INSTDIR\collating\fragment"
  File "collating\fragment\libfragment_classifier.dll"
  File "collating\fragment\libfragment_classifier.exp"
  File "collating\fragment\libfragment_classifier.lib"
  File "collating\fragment\Makefile_lnx.mk"
  File "collating\fragment\Makefile_win.mk"
  File "collating\fragment\ncd.obj"
  File "collating\fragment\setup.py"
  SetOutPath "$INSTDIR\collating\fragment\src"
  File "collating\fragment\src\fragment_classifier.c"
  File "collating\fragment\src\ncd.c"
  File "collating\fragment\src\test_ncd.c"
  SetOutPath "$INSTDIR\collating\fragment"
  File "collating\fragment\zlibwapi.dll"
  File "collating\fragment\__init__.py"
  SetOutPath "$INSTDIR\collating\magic"
  File "collating\magic\magic_context.py"
  File "collating\magic\__init__.py"
  SetOutPath "$INSTDIR\collating\media"
  File "collating\media\frag_mm_meta_context.py"
  File "collating\media\Makefile"
  SetOutPath "$INSTDIR\collating\media\src"
  File "collating\media\src\frag_mm_meta_context.cpp"
  SetOutPath "$INSTDIR\collating\media"
  File "collating\media\__init__.py"
  SetOutPath "$INSTDIR\collating"
  File "collating\__init__.py"
  SetOutPath "$INSTDIR\data\frags_ref"
  File "data\frags_ref\1308163855.svg"
  File "data\frags_ref\1998-09.txt"
  File "data\frags_ref\2010-December.txt"
  File "data\frags_ref\20110615232012!Block_Diagram_Delta-Sigma.svg"
  File "data\frags_ref\badge-square.svg"
  File "data\frags_ref\brou_fema.txt"
  File "data\frags_ref\By-nc_bw.svg"
  File "data\frags_ref\cathen05.txt"
  File "data\frags_ref\dk_logo.svg"
  File "data\frags_ref\draft302.txt"
  File "data\frags_ref\eprhb.txt"
  File "data\frags_ref\FVDO_Freeway_qcif.h264"
  File "data\frags_ref\FVDO_Girl_qcif.h264"
  File "data\frags_ref\FVDO_Golf_qcif.h264"
  File "data\frags_ref\FVDO_Plane_qcif.h264"
  File "data\frags_ref\FVDO_Shore_qcif.h264"
  File "data\frags_ref\gcal.txt"
  File "data\frags_ref\html3.txt"
  File "data\frags_ref\latemp-button-white-gill-sans.svg"
  File "data\frags_ref\marketing.svg"
  File "data\frags_ref\More from Frank.txt"
  File "data\frags_ref\osworld-kwadrat.svg"
  File "data\frags_ref\partijen-die-in-het-kader-van-het-lsp-van-de-overheid-geld-hebben-ontvangen---bijlage-2.html"
  File "data\frags_ref\PL_09_04.txt"
  File "data\frags_ref\psychologyjokes.html"
  File "data\frags_ref\rss.htm"
  File "data\frags_ref\Schutzringmesszelle.svg"
  File "data\frags_ref\sonys-war-on-makers-hackers-and-innovators.html"
  File "data\frags_ref\t20110509_111334.html"
  File "data\frags_ref\techlingo.html"
  File "data\frags_ref\test_xx.h264"
  File "data\frags_ref\test_yy.h264"
  File "data\frags_ref\tornadoes-climate-change-2011_n_855369.html"
  File "data\frags_ref\translate_t.htm"
  File "data\frags_ref\translations.html"
  File "data\frags_ref\trexlogo.svg"
  File "data\frags_ref\type_14.html"
  SetOutPath "$INSTDIR\data"
  File "data\image_ref_h264_fat.img"
  File "data\image_ref_h264_fat_formatted.img"
  File "data\image_ref_h264_ntfs.img"
  File "data\image_ref_h264_ntfs_formatted.img"
  SetOutPath "$INSTDIR\gui"
  File "gui\file_carving_ui.py"
  File "gui\file_carving_ui.ui"
  File "gui\gui_fc.py"
  File "gui\gui_imgvisualizer.py"
  File "gui\gui_options.py"
  File "gui\gui_resources.py"
  File "gui\gui_resources.qrc"
  File "gui\icon_mm_carver.ico"
  File "gui\icon_mm_carver.png"
  File "gui\loadinfo.gif"
  File "gui\mainwindow.py"
  File "gui\mainwindow.ui"
  File "gui\qtimport.py"
  SetOutPath "$INSTDIR\lib"
  File "lib\datatypes.py"
  File "lib\frags.py"
  File "lib\unittest_frags.py"
  File "lib\__init__.py"
  SetOutPath "$INSTDIR\licenses\ffmpeg"
  File "licenses\ffmpeg\bzip2.txt"
  File "licenses\ffmpeg\ffmpeg.txt"
  File "licenses\ffmpeg\freetype.txt"
  File "licenses\ffmpeg\frei0r.txt"
  File "licenses\ffmpeg\gsm.txt"
  File "licenses\ffmpeg\lame.txt"
  File "licenses\ffmpeg\libvpx.txt"
  File "licenses\ffmpeg\opencore-amr.txt"
  File "licenses\ffmpeg\openjpeg.txt"
  File "licenses\ffmpeg\rtmp.txt"
  File "licenses\ffmpeg\schroedinger.txt"
  File "licenses\ffmpeg\sdl.txt"
  File "licenses\ffmpeg\speex.txt"
  File "licenses\ffmpeg\theora.txt"
  File "licenses\ffmpeg\vo-aacenc.txt"
  File "licenses\ffmpeg\vo-amrwbenc.txt"
  File "licenses\ffmpeg\vorbis.txt"
  File "licenses\ffmpeg\x264.txt"
  File "licenses\ffmpeg\xavs.txt"
  File "licenses\ffmpeg\xvid.txt"
  File "licenses\ffmpeg\zlib.txt"
  SetOutPath "$INSTDIR\licenses\sleuthkit"
  File "licenses\sleuthkit\cpl1.0.txt"
  File "licenses\sleuthkit\IBM-LICENSE"
  SetOutPath "$INSTDIR\preprocessing"
  File "preprocessing\fsstat_context.py"
  SetOutPath "$INSTDIR\preprocessing\plain"
  File "preprocessing\plain\plain_context.py"
  File "preprocessing\plain\__init__.py"
  SetOutPath "$INSTDIR\preprocessing"
  File "preprocessing\preprocessing_context.py"
  SetOutPath "$INSTDIR\preprocessing\tsk"
  File "preprocessing\tsk\tsk.py"
  File "preprocessing\tsk\tsk_context.py"
  File "preprocessing\tsk\__init__.py"
  SetOutPath "$INSTDIR\preprocessing"
  File "preprocessing\__init__.py"
  SetOutPath "$INSTDIR\reassembly\fragmentizer"
  File "reassembly\fragmentizer\fragmentizer_context.py"
  File "reassembly\fragmentizer\__init__.py"
  SetOutPath "$INSTDIR\reassembly\reassembly"
  File "reassembly\reassembly\decoder.py"
  File "reassembly\reassembly\reassembly_context.py"
  File "reassembly\reassembly\__init__.py"
  SetOutPath "$INSTDIR\reassembly"
  File "reassembly\__init__.py"

; Shortcuts
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  CreateDirectory "$SMPROGRAMS\$ICONS_GROUP"
  SetOutPath $INSTDIR
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Multimedia File Carver.lnk" "python.exe" "$\"$INSTDIR\gui\gui_fc.py$\"" "$INSTDIR\gui\icon_mm_carver.ico"
  CreateShortCut "$DESKTOP\Multimedia File Carver.lnk" "python.exe" "$\"$INSTDIR\gui\gui_fc.py$\"" "$INSTDIR\gui\icon_mm_carver.ico"
  !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

Section -AdditionalIcons
  SetOutPath $INSTDIR
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Uninstall.lnk" "$INSTDIR\uninst.exe"
  !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\bin\ffmpeg.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\bin\ffmpeg.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  !insertmacro MUI_STARTMENU_GETFOLDER "Application" $ICONS_GROUP
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\reassembly\__init__.py"
  Delete "$INSTDIR\reassembly\reassembly\__init__.py"
  Delete "$INSTDIR\reassembly\reassembly\reassembly_context.py"
  Delete "$INSTDIR\reassembly\reassembly\decoder.py"
  Delete "$INSTDIR\reassembly\fragmentizer\__init__.py"
  Delete "$INSTDIR\reassembly\fragmentizer\fragmentizer_context.py"
  Delete "$INSTDIR\preprocessing\__init__.py"
  Delete "$INSTDIR\preprocessing\tsk\__init__.py"
  Delete "$INSTDIR\preprocessing\tsk\tsk_context.py"
  Delete "$INSTDIR\preprocessing\tsk\tsk.py"
  Delete "$INSTDIR\preprocessing\preprocessing_context.py"
  Delete "$INSTDIR\preprocessing\plain\__init__.py"
  Delete "$INSTDIR\preprocessing\plain\plain_context.py"
  Delete "$INSTDIR\preprocessing\fsstat_context.py"
  Delete "$INSTDIR\licenses\sleuthkit\IBM-LICENSE"
  Delete "$INSTDIR\licenses\sleuthkit\cpl1.0.txt"
  Delete "$INSTDIR\licenses\ffmpeg\zlib.txt"
  Delete "$INSTDIR\licenses\ffmpeg\xvid.txt"
  Delete "$INSTDIR\licenses\ffmpeg\xavs.txt"
  Delete "$INSTDIR\licenses\ffmpeg\x264.txt"
  Delete "$INSTDIR\licenses\ffmpeg\vorbis.txt"
  Delete "$INSTDIR\licenses\ffmpeg\vo-amrwbenc.txt"
  Delete "$INSTDIR\licenses\ffmpeg\vo-aacenc.txt"
  Delete "$INSTDIR\licenses\ffmpeg\theora.txt"
  Delete "$INSTDIR\licenses\ffmpeg\speex.txt"
  Delete "$INSTDIR\licenses\ffmpeg\sdl.txt"
  Delete "$INSTDIR\licenses\ffmpeg\schroedinger.txt"
  Delete "$INSTDIR\licenses\ffmpeg\rtmp.txt"
  Delete "$INSTDIR\licenses\ffmpeg\openjpeg.txt"
  Delete "$INSTDIR\licenses\ffmpeg\opencore-amr.txt"
  Delete "$INSTDIR\licenses\ffmpeg\libvpx.txt"
  Delete "$INSTDIR\licenses\ffmpeg\lame.txt"
  Delete "$INSTDIR\licenses\ffmpeg\gsm.txt"
  Delete "$INSTDIR\licenses\ffmpeg\frei0r.txt"
  Delete "$INSTDIR\licenses\ffmpeg\freetype.txt"
  Delete "$INSTDIR\licenses\ffmpeg\ffmpeg.txt"
  Delete "$INSTDIR\licenses\ffmpeg\bzip2.txt"
  Delete "$INSTDIR\lib\__init__.py"
  Delete "$INSTDIR\lib\unittest_frags.py"
  Delete "$INSTDIR\lib\frags.py"
  Delete "$INSTDIR\lib\datatypes.py"
  Delete "$INSTDIR\gui\qtimport.py"
  Delete "$INSTDIR\gui\mainwindow.ui"
  Delete "$INSTDIR\gui\mainwindow.py"
  Delete "$INSTDIR\gui\loadinfo.gif"
  Delete "$INSTDIR\gui\icon_mm_carver.png"
  Delete "$INSTDIR\gui\icon_mm_carver.ico"
  Delete "$INSTDIR\gui\gui_resources.qrc"
  Delete "$INSTDIR\gui\gui_resources.py"
  Delete "$INSTDIR\gui\gui_options.py"
  Delete "$INSTDIR\gui\gui_imgvisualizer.py"
  Delete "$INSTDIR\gui\gui_fc.py"
  Delete "$INSTDIR\gui\file_carving_ui.ui"
  Delete "$INSTDIR\gui\file_carving_ui.py"
  Delete "$INSTDIR\data\image_ref_h264_ntfs_formatted.img"
  Delete "$INSTDIR\data\image_ref_h264_ntfs.img"
  Delete "$INSTDIR\data\image_ref_h264_fat_formatted.img"
  Delete "$INSTDIR\data\image_ref_h264_fat.img"
  Delete "$INSTDIR\data\frags_ref\type_14.html"
  Delete "$INSTDIR\data\frags_ref\trexlogo.svg"
  Delete "$INSTDIR\data\frags_ref\translations.html"
  Delete "$INSTDIR\data\frags_ref\translate_t.htm"
  Delete "$INSTDIR\data\frags_ref\tornadoes-climate-change-2011_n_855369.html"
  Delete "$INSTDIR\data\frags_ref\test_yy.h264"
  Delete "$INSTDIR\data\frags_ref\test_xx.h264"
  Delete "$INSTDIR\data\frags_ref\techlingo.html"
  Delete "$INSTDIR\data\frags_ref\t20110509_111334.html"
  Delete "$INSTDIR\data\frags_ref\sonys-war-on-makers-hackers-and-innovators.html"
  Delete "$INSTDIR\data\frags_ref\Schutzringmesszelle.svg"
  Delete "$INSTDIR\data\frags_ref\rss.htm"
  Delete "$INSTDIR\data\frags_ref\psychologyjokes.html"
  Delete "$INSTDIR\data\frags_ref\PL_09_04.txt"
  Delete "$INSTDIR\data\frags_ref\partijen-die-in-het-kader-van-het-lsp-van-de-overheid-geld-hebben-ontvangen---bijlage-2.html"
  Delete "$INSTDIR\data\frags_ref\osworld-kwadrat.svg"
  Delete "$INSTDIR\data\frags_ref\More from Frank.txt"
  Delete "$INSTDIR\data\frags_ref\marketing.svg"
  Delete "$INSTDIR\data\frags_ref\latemp-button-white-gill-sans.svg"
  Delete "$INSTDIR\data\frags_ref\html3.txt"
  Delete "$INSTDIR\data\frags_ref\gcal.txt"
  Delete "$INSTDIR\data\frags_ref\FVDO_Shore_qcif.h264"
  Delete "$INSTDIR\data\frags_ref\FVDO_Plane_qcif.h264"
  Delete "$INSTDIR\data\frags_ref\FVDO_Golf_qcif.h264"
  Delete "$INSTDIR\data\frags_ref\FVDO_Girl_qcif.h264"
  Delete "$INSTDIR\data\frags_ref\FVDO_Freeway_qcif.h264"
  Delete "$INSTDIR\data\frags_ref\eprhb.txt"
  Delete "$INSTDIR\data\frags_ref\draft302.txt"
  Delete "$INSTDIR\data\frags_ref\dk_logo.svg"
  Delete "$INSTDIR\data\frags_ref\cathen05.txt"
  Delete "$INSTDIR\data\frags_ref\By-nc_bw.svg"
  Delete "$INSTDIR\data\frags_ref\brou_fema.txt"
  Delete "$INSTDIR\data\frags_ref\badge-square.svg"
  Delete "$INSTDIR\data\frags_ref\20110615232012!Block_Diagram_Delta-Sigma.svg"
  Delete "$INSTDIR\data\frags_ref\2010-December.txt"
  Delete "$INSTDIR\data\frags_ref\1998-09.txt"
  Delete "$INSTDIR\data\frags_ref\1308163855.svg"
  Delete "$INSTDIR\collating\__init__.py"
  Delete "$INSTDIR\collating\media\__init__.py"
  Delete "$INSTDIR\collating\media\src\frag_mm_meta_context.cpp"
  Delete "$INSTDIR\collating\media\Makefile"
  Delete "$INSTDIR\collating\media\frag_mm_meta_context.py"
  Delete "$INSTDIR\collating\magic\__init__.py"
  Delete "$INSTDIR\collating\magic\magic_context.py"
  Delete "$INSTDIR\collating\fragment\__init__.py"
  Delete "$INSTDIR\collating\fragment\zlibwapi.dll"
  Delete "$INSTDIR\collating\fragment\src\test_ncd.c"
  Delete "$INSTDIR\collating\fragment\src\ncd.c"
  Delete "$INSTDIR\collating\fragment\src\fragment_classifier.c"
  Delete "$INSTDIR\collating\fragment\setup.py"
  Delete "$INSTDIR\collating\fragment\ncd.obj"
  Delete "$INSTDIR\collating\fragment\Makefile_win.mk"
  Delete "$INSTDIR\collating\fragment\Makefile_lnx.mk"
  Delete "$INSTDIR\collating\fragment\libfragment_classifier.lib"
  Delete "$INSTDIR\collating\fragment\libfragment_classifier.exp"
  Delete "$INSTDIR\collating\fragment\libfragment_classifier.dll"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\zlib.h"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\zconf.h"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\staticx64\zlibstat.lib"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\static32\zlibstat.lib"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\readme.txt"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dllx64\zlibwapi.map"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dllx64\zlibwapi.lib"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dllx64\zlibwapi.exp"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dllx64\zlibwapi.dll"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dllx64\demo\testzlib.exe"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dllx64\demo\minizip.exe"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dllx64\demo\miniunz.exe"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dll32\zlibwapi.map"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dll32\zlibwapi.lib"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dll32\zlibwapi.exp"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dll32\zlibwapi.dll"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dll32\demo\testzlib.exe"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dll32\demo\minizip.exe"
  Delete "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dll32\demo\miniunz.exe"
  Delete "$INSTDIR\collating\fragment\include\stdint_ms.h"
  Delete "$INSTDIR\collating\fragment\include\ncd.h"
  Delete "$INSTDIR\collating\fragment\include\inttypes.h"
  Delete "$INSTDIR\collating\fragment\include\fragment_classifier.h"
  Delete "$INSTDIR\collating\fragment\include\dirent_ms.h"
  Delete "$INSTDIR\collating\fragment\fragment_context.pyx"
  Delete "$INSTDIR\collating\fragment\fragment_context.pyd"
  Delete "$INSTDIR\collating\fragment\fragment_context.c"
  Delete "$INSTDIR\collating\fragment\fragment_classifier.obj"
  Delete "$INSTDIR\collating\fragment\cfragment_context.pxd"
  Delete "$INSTDIR\collating\fragment\build\temp.win-amd64-2.7\Release\fragment_context.pyd.manifest"
  Delete "$INSTDIR\collating\fragment\build\temp.win-amd64-2.7\Release\fragment_context.obj"
  Delete "$INSTDIR\collating\fragment\build\temp.win-amd64-2.7\Release\fragment_context.lib"
  Delete "$INSTDIR\collating\fragment\build\temp.win-amd64-2.7\Release\fragment_context.exp"
  Delete "$INSTDIR\bin\zlib1.dll"
  Delete "$INSTDIR\bin\swscale-2.dll"
  Delete "$INSTDIR\bin\swresample-0.dll"
  Delete "$INSTDIR\bin\postproc-51.dll"
  Delete "$INSTDIR\bin\libewf.dll"
  Delete "$INSTDIR\bin\fsstat.exe"
  Delete "$INSTDIR\bin\ffmpeg.exe"
  Delete "$INSTDIR\bin\avutil-51.dll"
  Delete "$INSTDIR\bin\avformat-53.dll"
  Delete "$INSTDIR\bin\avfilter-2.dll"
  Delete "$INSTDIR\bin\avdevice-53.dll"
  Delete "$INSTDIR\bin\avcodec-53.dll"
  Delete "$INSTDIR\mm_carver_impl.py"
  Delete "$INSTDIR\mm_context.py"

  Delete "$SMPROGRAMS\$ICONS_GROUP\Uninstall.lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\Website.lnk"
  Delete "$DESKTOP\Multimedia File Carver.lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\Multimedia File Carver.lnk"

  RMDir "$SMPROGRAMS\$ICONS_GROUP"
  RMDir "$INSTDIR\reassembly\reassembly"
  RMDir "$INSTDIR\reassembly\fragmentizer"
  RMDir "$INSTDIR\reassembly"
  RMDir "$INSTDIR\preprocessing\tsk"
  RMDir "$INSTDIR\preprocessing\plain"
  RMDir "$INSTDIR\preprocessing"
  RMDir "$INSTDIR\licenses\sleuthkit"
  RMDir "$INSTDIR\licenses\ffmpeg"
  RMDir "$INSTDIR\lib"
  RMDir "$INSTDIR\gui"
  RMDir "$INSTDIR\data\frags_ref"
  RMDir "$INSTDIR\data"
  RMDir "$INSTDIR\collating\media\src"
  RMDir "$INSTDIR\collating\media"
  RMDir "$INSTDIR\collating\magic"
  RMDir "$INSTDIR\collating\fragment\src"
  RMDir "$INSTDIR\collating\fragment\lib\zlib-1.2.5\staticx64"
  RMDir "$INSTDIR\collating\fragment\lib\zlib-1.2.5\static32"
  RMDir "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dllx64\demo"
  RMDir "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dllx64"
  RMDir "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dll32\demo"
  RMDir "$INSTDIR\collating\fragment\lib\zlib-1.2.5\dll32"
  RMDir "$INSTDIR\collating\fragment\lib\zlib-1.2.5"
  RMDir "$INSTDIR\collating\fragment\include"
  RMDir "$INSTDIR\collating\fragment\build\temp.win-amd64-2.7\Release"
  RMDir "$INSTDIR\collating\fragment"
  RMDir "$INSTDIR\collating"
  RMDir "$INSTDIR\bin"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd