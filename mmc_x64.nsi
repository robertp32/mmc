; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Multimedia File Carver"
!define PRODUCT_VERSION "0.9-3"
!define PRODUCT_PUBLISHER "St. Poelten University of Applied Sciences"
!define PRODUCT_WEB_SITE "http://www.digitalforensics.at"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\${PRODUCT_NAME}"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"
!define PRODUCT_STARTMENU_REGVAL "NSIS:StartMenuDir"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "C:\temp\mmc\resources\icon_mmc.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "C:\temp\mmc\debian\copyright"
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
OutFile "../setup.exe"
InstallDir "$PROGRAMFILES\Multimedia File Carver"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite ifnewer
  File "mm_context.py"
  File "mm_carver_impl.py"
  SetOutPath "$INSTDIR\bin"
  SetOverwrite try
  File "C:\temp\mmc\bin\avcodec-53.dll"
  File "C:\temp\mmc\bin\avdevice-53.dll"
  File "C:\temp\mmc\bin\avfilter-2.dll"
  File "C:\temp\mmc\bin\avformat-53.dll"
  File "C:\temp\mmc\bin\avutil-51.dll"
  File "C:\temp\mmc\bin\ffmpeg.exe"
  File "C:\temp\mmc\bin\fsstat.exe"
  File "C:\temp\mmc\bin\libewf.dll"
  File "C:\temp\mmc\bin\postproc-51.dll"
  File "C:\temp\mmc\bin\swresample-0.dll"
  File "C:\temp\mmc\bin\swscale-2.dll"
  File "C:\temp\mmc\bin\zlib1.dll"
  SetOutPath "$INSTDIR\collating\fragment"
  File "C:\temp\mmc\collating\fragment\cfragment_context.pxd"
  File "C:\temp\mmc\collating\fragment\fragment_context.pyd"
  File "C:\temp\mmc\collating\fragment\fragment_context.pyx"
  File "C:\temp\mmc\collating\fragment\libfragment_classifier.dll"
  File "C:\temp\mmc\collating\fragment\zlibwapi.dll"
  File "C:\temp\mmc\collating\fragment\__init__.py"
  SetOutPath "$INSTDIR\collating\magic"
  File "C:\temp\mmc\collating\magic\magic_context.py"
  File "C:\temp\mmc\collating\magic\__init__.py"
  SetOutPath "$INSTDIR\collating"
  File "C:\temp\mmc\collating\__init__.py"
  SetOutPath "$INSTDIR\data\frags_ref"
  File "C:\temp\mmc\data\frags_ref\1308163855.svg"
  File "C:\temp\mmc\data\frags_ref\1998-09.txt"
  File "C:\temp\mmc\data\frags_ref\2010-December.txt"
  File "C:\temp\mmc\data\frags_ref\20110615232012!Block_Diagram_Delta-Sigma.svg"
  File "C:\temp\mmc\data\frags_ref\badge-square.svg"
  File "C:\temp\mmc\data\frags_ref\brou_fema.txt"
  File "C:\temp\mmc\data\frags_ref\By-nc_bw.svg"
  File "C:\temp\mmc\data\frags_ref\cathen05.txt"
  File "C:\temp\mmc\data\frags_ref\dk_logo.svg"
  File "C:\temp\mmc\data\frags_ref\draft302.txt"
  File "C:\temp\mmc\data\frags_ref\eprhb.txt"
  File "C:\temp\mmc\data\frags_ref\FVDO_Freeway_qcif.h264"
  File "C:\temp\mmc\data\frags_ref\FVDO_Girl_qcif.h264"
  File "C:\temp\mmc\data\frags_ref\FVDO_Golf_qcif.h264"
  File "C:\temp\mmc\data\frags_ref\FVDO_Plane_qcif.h264"
  File "C:\temp\mmc\data\frags_ref\FVDO_Shore_qcif.h264"
  File "C:\temp\mmc\data\frags_ref\gcal.txt"
  File "C:\temp\mmc\data\frags_ref\html3.txt"
  File "C:\temp\mmc\data\frags_ref\latemp-button-white-gill-sans.svg"
  File "C:\temp\mmc\data\frags_ref\marketing.svg"
  File "C:\temp\mmc\data\frags_ref\More from Frank.txt"
  File "C:\temp\mmc\data\frags_ref\osworld-kwadrat.svg"
  File "C:\temp\mmc\data\frags_ref\partijen-die-in-het-kader-van-het-lsp-van-de-overheid-geld-hebben-ontvangen---bijlage-2.html"
  File "C:\temp\mmc\data\frags_ref\PL_09_04.txt"
  File "C:\temp\mmc\data\frags_ref\psychologyjokes.html"
  File "C:\temp\mmc\data\frags_ref\rss.htm"
  File "C:\temp\mmc\data\frags_ref\Schutzringmesszelle.svg"
  File "C:\temp\mmc\data\frags_ref\sonys-war-on-makers-hackers-and-innovators.html"
  File "C:\temp\mmc\data\frags_ref\t20110509_111334.html"
  File "C:\temp\mmc\data\frags_ref\techlingo.html"
  File "C:\temp\mmc\data\frags_ref\test_xx.h264"
  File "C:\temp\mmc\data\frags_ref\test_yy.h264"
  File "C:\temp\mmc\data\frags_ref\tornadoes-climate-change-2011_n_855369.html"
  File "C:\temp\mmc\data\frags_ref\translate_t.htm"
  File "C:\temp\mmc\data\frags_ref\translations.html"
  File "C:\temp\mmc\data\frags_ref\trexlogo.svg"
  File "C:\temp\mmc\data\frags_ref\type_14.html"
  SetOutPath "$INSTDIR\data"
  File "C:\temp\mmc\data\image_ref_h264_fat.img"
  File "C:\temp\mmc\data\image_ref_h264_fat_formatted.img"
  File "C:\temp\mmc\data\image_ref_h264_ntfs.img"
  File "C:\temp\mmc\data\image_ref_h264_ntfs_formatted.img"
  SetOutPath "$INSTDIR\gui"
  File "C:\temp\mmc\gui\file_carving_ui.py"
  File "C:\temp\mmc\gui\file_carving_ui.ui"
  File "C:\temp\mmc\gui\gui_fc.py"
  File "C:\temp\mmc\gui\gui_imgvisualizer.py"
  File "C:\temp\mmc\gui\gui_options.py"
  File "C:\temp\mmc\gui\gui_resources.py"
  File "C:\temp\mmc\gui\gui_resources.qrc"
  File "C:\temp\mmc\gui\icon_mm_carver.ico"
  File "C:\temp\mmc\gui\icon_mm_carver.png"
  File "C:\temp\mmc\gui\loadinfo.gif"
  File "C:\temp\mmc\gui\mainwindow.py"
  File "C:\temp\mmc\gui\mainwindow.ui"
  File "C:\temp\mmc\gui\qtimport.py"
  SetOutPath "$INSTDIR\lib"
  File "C:\temp\mmc\lib\datatypes.py"
  File "C:\temp\mmc\lib\frags.py"
  File "C:\temp\mmc\lib\unittest_frags.py"
  File "C:\temp\mmc\lib\__init__.py"
  SetOutPath "$INSTDIR\licenses"
  File "C:\temp\mmc\licenses\gpl.txt"
  File "C:\temp\mmc\licenses\lgpl.txt"
  SetOutPath "$INSTDIR\licenses\ffmpeg"
  File "C:\temp\mmc\licenses\ffmpeg\bzip2.txt"
  File "C:\temp\mmc\licenses\ffmpeg\ffmpeg.txt"
  File "C:\temp\mmc\licenses\ffmpeg\freetype.txt"
  File "C:\temp\mmc\licenses\ffmpeg\frei0r.txt"
  File "C:\temp\mmc\licenses\ffmpeg\gsm.txt"
  File "C:\temp\mmc\licenses\ffmpeg\lame.txt"
  File "C:\temp\mmc\licenses\ffmpeg\libvpx.txt"
  File "C:\temp\mmc\licenses\ffmpeg\opencore-amr.txt"
  File "C:\temp\mmc\licenses\ffmpeg\openjpeg.txt"
  File "C:\temp\mmc\licenses\ffmpeg\rtmp.txt"
  File "C:\temp\mmc\licenses\ffmpeg\schroedinger.txt"
  File "C:\temp\mmc\licenses\ffmpeg\sdl.txt"
  File "C:\temp\mmc\licenses\ffmpeg\speex.txt"
  File "C:\temp\mmc\licenses\ffmpeg\theora.txt"
  File "C:\temp\mmc\licenses\ffmpeg\vo-aacenc.txt"
  File "C:\temp\mmc\licenses\ffmpeg\vo-amrwbenc.txt"
  File "C:\temp\mmc\licenses\ffmpeg\vorbis.txt"
  File "C:\temp\mmc\licenses\ffmpeg\x264.txt"
  File "C:\temp\mmc\licenses\ffmpeg\xavs.txt"
  File "C:\temp\mmc\licenses\ffmpeg\xvid.txt"
  File "C:\temp\mmc\licenses\ffmpeg\zlib.txt"
  SetOutPath "$INSTDIR\licenses\sleuthkit"
  File "C:\temp\mmc\licenses\sleuthkit\cpl1.0.txt"
  File "C:\temp\mmc\licenses\sleuthkit\IBM-LICENSE"
  SetOutPath "$INSTDIR\licenses\zlib"
  File "C:\temp\mmc\licenses\zlib\zlib.txt"
  SetOutPath "$INSTDIR\preprocessing"
  File "C:\temp\mmc\preprocessing\fsstat_context.py"
  SetOutPath "$INSTDIR\preprocessing\plain"
  File "C:\temp\mmc\preprocessing\plain\plain_context.py"
  File "C:\temp\mmc\preprocessing\plain\__init__.py"
  SetOutPath "$INSTDIR\preprocessing"
  File "C:\temp\mmc\preprocessing\preprocessing_context.py"
  SetOutPath "$INSTDIR\preprocessing\tsk"
  File "C:\temp\mmc\preprocessing\tsk\tsk.py"
  File "C:\temp\mmc\preprocessing\tsk\tsk_context.py"
  File "C:\temp\mmc\preprocessing\tsk\__init__.py"
  SetOutPath "$INSTDIR\preprocessing"
  File "C:\temp\mmc\preprocessing\__init__.py"
  SetOutPath "$INSTDIR\reassembly\fragmentizer"
  File "C:\temp\mmc\reassembly\fragmentizer\fragmentizer_context.py"
  File "C:\temp\mmc\reassembly\fragmentizer\__init__.py"
  SetOutPath "$INSTDIR\reassembly\reassembly"
  File "C:\temp\mmc\reassembly\reassembly\decoder.py"
  File "C:\temp\mmc\reassembly\reassembly\reassembly_context.py"
  File "C:\temp\mmc\reassembly\reassembly\__init__.py"
  SetOutPath "$INSTDIR\reassembly"
  File "C:\temp\mmc\reassembly\__init__.py"
  SetOutPath "$INSTDIR\"
  SetOverwrite ifnewer
  File "C:\temp\mmc\resources\icon_mmc.ico"

; Shortcuts
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  CreateDirectory "$SMPROGRAMS\$ICONS_GROUP"
  SetOutPath $INSTDIR
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Multimedia File Carver.lnk" "python.exe" "$\"$INSTDIR\gui\gui_fc.py$\"" "$INSTDIR\icon_mmc.ico"
  CreateShortCut "$DESKTOP\Multimedia File Carver.lnk" "python.exe" "$\"$INSTDIR\gui\gui_fc.py$\"" "$INSTDIR\icon_mmc.ico"
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
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\icon_mmc.ico"
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
  Delete "$INSTDIR\icon_mmc.ico"
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
  Delete "$INSTDIR\licenses\gpl.txt"
  Delete "$INSTDIR\licenses\lgpl.txt"
  Delete "$INSTDIR\licenses\zlib\zlib.txt"
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
  Delete "$INSTDIR\collating\magic\__init__.py"
  Delete "$INSTDIR\collating\magic\magic_context.py"
  Delete "$INSTDIR\collating\fragment\__init__.py"
  Delete "$INSTDIR\collating\fragment\zlibwapi.dll"
  Delete "$INSTDIR\collating\fragment\libfragment_classifier.dll"
  Delete "$INSTDIR\collating\fragment\fragment_context.pyx"
  Delete "$INSTDIR\collating\fragment\fragment_context.pyd"
  Delete "$INSTDIR\collating\fragment\cfragment_context.pxd"
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
  RMDir "$INSTDIR\licenses\zlib"
  RMDir "$INSTDIR\lib"
  RMDir "$INSTDIR\gui"
  RMDir "$INSTDIR\data\frags_ref"
  RMDir "$INSTDIR\data"
  RMDir "$INSTDIR\collating\magic"
  RMDir "$INSTDIR\collating\fragment"
  RMDir "$INSTDIR\collating"
  RMDir "$INSTDIR\bin"
  RMDir "$INSTDIR\"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd
