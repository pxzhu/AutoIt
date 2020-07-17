;~ Made by pxzhu
;~ 2020-07-16 Start
;~ 2020-07-17 ~ing

#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <GUIConstants.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <InetConstants.au3>
#include <MsgBoxConstants.au3>
#include <ImageSearch2015.au3>
#Region ### START Koda GUI section ### Form=I:\git\AutoIt\Auto_Installer\Auto_Installer_GUI_KODA\InstallerGUI.kxf
$Installer = GUICreate("Auto Installer v1.1[by pxzhu]", 421, 521, 689, 263)
GUISetBkColor(0xD7E4F2)
$InternetBrowser = GUICtrlCreateGroup("Internet Browser", 10, 10, 150, 90)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
Global $Chrome = GUICtrlCreateCheckbox("Chrome", 25, 30, 100, 20)
Global $Whale = GUICtrlCreateCheckbox("Whale", 25, 50, 100, 20)
Global $Firefox = GUICtrlCreateCheckbox("Firefox", 25, 70, 100, 20)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Editor = GUICtrlCreateGroup("Editor", 180, 10, 230, 110)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
Global $Notepad = GUICtrlCreateCheckbox("Notepad++", 195, 30, 100, 20)
Global $VisualStudio2019Community = GUICtrlCreateCheckbox("VisualStudio2019Community", 195, 50, 200, 20)
Global $VisualStudioCode = GUICtrlCreateCheckbox("VisualStudioCode", 195, 70, 160, 20)
Global $Eclipse = GUICtrlCreateCheckbox("Eclipse(JDK14, PATH setting)", 195, 90, 210, 20)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Capture = GUICtrlCreateGroup("Capture", 10, 120, 150, 70)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
Global $BandiCamera = GUICtrlCreateCheckbox("BandiCamera", 25, 140, 120, 20)
Global $OBSStudio = GUICtrlCreateCheckbox("OBSStudio", 25, 160, 100, 20)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Vaccine = GUICtrlCreateGroup("Vaccine", 10, 210, 150, 50)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
Global $Bitdefender = GUICtrlCreateCheckbox("Bitdefender", 25, 230, 120, 20)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Utilites = GUICtrlCreateGroup("Utilites", 10, 280, 150, 230)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
Global $Bandizip = GUICtrlCreateCheckbox("Bandizip", 25, 300, 100, 20)
Global $HoneyView = GUICtrlCreateCheckbox("HoneyView", 25, 320, 100, 20)
Global $PotPlayer = GUICtrlCreateCheckbox("PotPlayer", 25, 340, 100, 20)
Global $KakaoTalk = GUICtrlCreateCheckbox("KakaoTalk", 25, 360, 100, 20)
Global $Discord = GUICtrlCreateCheckbox("Discord", 25, 380, 100, 20)
Global $TeamViewer = GUICtrlCreateCheckbox("TeamViewer", 25, 400, 100, 20)
Global $ClassicShell = GUICtrlCreateCheckbox("ClassicShell", 25, 420, 100, 20)
Global $Everything = GUICtrlCreateCheckbox("Everything", 25, 440, 100, 20)
Global $Git = GUICtrlCreateCheckbox("Git", 25, 460, 100, 20)
Global $VMwarePlayer = GUICtrlCreateCheckbox("VMwarePlayer", 25, 480, 120, 20)
GUICtrlCreateGroup("", -99, -99, 1, 1)
Global $SelectAll = GUICtrlCreateButton("SelectAll", 180, 140, 230, 50, $WS_GROUP)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
Global $SelectDefault = GUICtrlCreateButton("SelectDefault", 180, 210, 230, 50, $WS_GROUP)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
Global $HowToUse = GUICtrlCreateButton("HowToUse", 180, 280, 230, 50, $WS_GROUP)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
Global $InstallButton = GUICtrlCreateButton("InstallButton", 180, 350, 230, 50, $WS_GROUP)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
Global $About = GUICtrlCreateButton("About", 180, 420, 230, 50, $WS_GROUP)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Copyright = GUICtrlCreateLabel("Copyright 2020. pxzhu. All right reserved.", 195, 490, 196, 17)
GUICtrlSetFont(-1, 7, 400, 0, "MS Sans Serif")
GUICtrlSetState($VisualStudio2019Community, $GUI_DISABLE)
GUICtrlSetState($VMwarePlayer, $GUI_DISABLE)
GUICtrlSetState($Eclipse, $GUI_DISABLE)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
Global $x = 0, $y = 0

While 1
$nMsg = GUIGetMsg()
Switch $nMsg
   Case $GUI_EVENT_CLOSE ;~ FileDelete All
	  FileDelete(@ScriptDir & "\ChromeSetup.exe")
	  FileDelete(@ScriptDir & "\WhaleSetup.exe")
	  FileDelete(@ScriptDir & "\Firefox Installer.exe")
	  FileDelete(@ScriptDir & "\BANDICAMERA-SETUP-KR.EXE")
	  FileDelete(@ScriptDir & "\BandiCamera_Close.bmp")
	  FileDelete(@ScriptDir & "\OBSStudio.exe")
	  FileDelete(@ScriptDir & "\Bandizip.exe")
	  FileDelete(@ScriptDir & "\Bandizip_Close.bmp")
	  FileDelete(@ScriptDir & "\HoneyView.exe")
	  FileDelete(@ScriptDir & "\PotPlayer.exe")
	  FileDelete(@ScriptDir & "\KakaoTalk_Setup.exe")
	  FileDelete(@ScriptDir & "\Discord.exe")
	  FileDelete(@ScriptDir & "\TeamViewer.exe")
	  FileDelete(@ScriptDir & "\ClassicShellSetup_4_3_1.exe")
	  FileDelete(@ScriptDir & "\Everything.exe")
	  FileDelete(@ScriptDir & "\Git.exe")
	  FileDelete(@ScriptDir & "\Notepad.exe")
	  FileDelete(@ScriptDir & "\VisualStudioCode.exe")
	  FileDelete(@ScriptDir & "\Bitdefender.exe")
;	  FileDelete(@ScriptDir & "\ImageSearchDLLx32.dll")
;	  FileDelete(@ScriptDir & "\ImageSearchDLLx64.dll")
;	  FileDelete(@ScriptDir & "\msvcr110.dll")
;	  FileDelete(@ScriptDir & "\msvcr110d.dll")
	  If FileExists("ChromeSetup.exe") Then FileDelete(@ScriptDir & "\ChromeSetup.exe")
	  If FileExists("msvcr110d.dll") Then FileDelete(@ScriptDir & "\WhaleSetup.exe")
	  If FileExists("Firefox Installer.exe") Then FileDelete(@ScriptDir & "\Firefox Installer.exe")
	  If FileExists("BANDICAMERA-SETUP-KR.EXE") Then FileDelete(@ScriptDir & "\BANDICAMERA-SETUP-KR.EXE")
	  If FileExists("BandiCamera_Close.bmp") Then FileDelete(@ScriptDir & "\BandiCamera_Close.bmp")
	  If FileExists("OBSStudio.exe") Then FileDelete(@ScriptDir & "\OBSStudio.exe")
	  If FileExists("Bandizip.exe") Then FileDelete(@ScriptDir & "\Bandizip.exe")
	  If FileExists("Bandizip_Close.bmp") Then FileDelete(@ScriptDir & "\Bandizip_Close.bmp")
	  If FileExists("HoneyView.exe") Then FileDelete(@ScriptDir & "\HoneyView.exe")
	  If FileExists("PotPlayer.exe") Then FileDelete(@ScriptDir & "\PotPlayer.exe")
	  If FileExists("KakaoTalk_Setup.exe") Then FileDelete(@ScriptDir & "\KakaoTalk_Setup.exe")
	  If FileExists("Discord.exe") Then FileDelete(@ScriptDir & "\Discord.exe")
	  If FileExists("TeamViewer.exe") Then FileDelete(@ScriptDir & "\TeamViewer.exe")
	  If FileExists("ClassicShellSetup_4_3_1.exe") Then FileDelete(@ScriptDir & "\ClassicShellSetup_4_3_1.exe")
	  If FileExists("Everything.exe") Then FileDelete(@ScriptDir & "\Everything.exe")
	  If FileExists("Git.exe") Then FileDelete(@ScriptDir & "\Git.exe")
	  If FileExists("Notepad.exe") Then FileDelete(@ScriptDir & "\Notepad.exe")
	  If FileExists("VisualStudioCode.exe") Then FileDelete(@ScriptDir & "\VisualStudioCode.exe")
	  If FileExists("Bitdefender.exe") Then FileDelete(@ScriptDir & "\Bitdefender.exe")
;	  If FileExists("ImageSearchDLLx32.dll") Then FileDelete(@ScriptDir & "\ImageSearchDLLx32.dll")
;	  If FileExists("ImageSearchDLLx64.dll") Then FileDelete(@ScriptDir & "\ImageSearchDLLx64.dll")
;	  If FileExists("msvcr110.dll") Then FileDelete(@ScriptDir & "\msvcr110.dll")
;	  If FileExists("msvcr110d.dll") Then FileDelete(@ScriptDir & "\msvcr110d.dll")
	  Exit
   Case $SelectAll
	  GUICtrlSetState($Chrome, $GUI_CHECKED)
	  GUICtrlSetState($Whale, $GUI_CHECKED)
	  GUICtrlSetState($Firefox, $GUI_CHECKED)
	  GUICtrlSetState($Notepad, $GUI_CHECKED)
;	  GUICtrlSetState($VisualStudio2019Community, $GUI_CHECKED)
	  GUICtrlSetState($VisualStudioCode, $GUI_CHECKED)
;	  GUICtrlSetState($Eclipse, $GUI_CHECKED)
	  GUICtrlSetState($BandiCamera, $GUI_CHECKED)
	  GUICtrlSetState($OBSStudio, $GUI_CHECKED)
	  GUICtrlSetState($Bitdefender, $GUI_CHECKED)
	  GUICtrlSetState($Bandizip, $GUI_CHECKED)
	  GUICtrlSetState($HoneyView, $GUI_CHECKED)
	  GUICtrlSetState($PotPlayer, $GUI_CHECKED)
	  GUICtrlSetState($KakaoTalk, $GUI_CHECKED)
	  GUICtrlSetState($Discord, $GUI_CHECKED)
	  GUICtrlSetState($TeamViewer, $GUI_CHECKED)
	  GUICtrlSetState($ClassicShell, $GUI_CHECKED)
	  GUICtrlSetState($Everything, $GUI_CHECKED)
	  GUICtrlSetState($Git, $GUI_CHECKED)
;	  GUICtrlSetState($VMwarePlayer, $GUI_CHECKED)
   Case $SelectDefault
	  GUICtrlSetState($Chrome, $GUI_UNCHECKED)
	  GUICtrlSetState($Whale, $GUI_UNCHECKED)
	  GUICtrlSetState($Firefox, $GUI_UNCHECKED)
	  GUICtrlSetState($Notepad, $GUI_UNCHECKED)
;	  GUICtrlSetState($VisualStudio2019Community, $GUI_UNCHECKED)
	  GUICtrlSetState($VisualStudioCode, $GUI_UNCHECKED)
;	  GUICtrlSetState($Eclipse, $GUI_UNCHECKED)
	  GUICtrlSetState($BandiCamera, $GUI_UNCHECKED)
	  GUICtrlSetState($OBSStudio, $GUI_UNCHECKED)
	  GUICtrlSetState($Bitdefender, $GUI_UNCHECKED)
	  GUICtrlSetState($Bandizip, $GUI_UNCHECKED)
	  GUICtrlSetState($HoneyView, $GUI_UNCHECKED)
	  GUICtrlSetState($PotPlayer, $GUI_UNCHECKED)
	  GUICtrlSetState($KakaoTalk, $GUI_UNCHECKED)
	  GUICtrlSetState($Discord, $GUI_UNCHECKED)
	  GUICtrlSetState($TeamViewer, $GUI_UNCHECKED)
	  GUICtrlSetState($ClassicShell, $GUI_UNCHECKED)
	  GUICtrlSetState($Everything, $GUI_UNCHECKED)
	  GUICtrlSetState($Git, $GUI_UNCHECKED)
;	  GUICtrlSetState($VMwarePlayer, $GUI_UNCHECKED)
   Case $HowToUse
	  MsgBox(0, "How To Use", "Check the program you want and click the 'Installbutton'")
   Case $InstallButton
	  Local $wait = WinWait("Auto Installer v1.1[by pxzhu]", "")
	  WinSetState($wait, "", @SW_HIDE)
	  If GUICtrlRead($Chrome) = 1 Then Chrome()
	  If GUICtrlRead($Whale) = 1 Then Whale()
	  If GUICtrlRead($Firefox) = 1 Then Firefox()
	  If GUICtrlRead($Notepad) = 1 Then Notepad()
	  If GUICtrlRead($VisualStudio2019Community) = 1 Then VisualStudio2019Community()
	  If GUICtrlRead($VisualStudioCode) = 1 Then VisualStudioCode()
	  If GUICtrlRead($Eclipse) = 1 Then Eclipse()
	  If GUICtrlRead($BandiCamera) = 1 Then BandiCamera()
	  If GUICtrlRead($OBSStudio) = 1 Then OBSStudio()
	  If GUICtrlRead($Bandizip) = 1 Then Bandizip()
	  If GUICtrlRead($HoneyView) = 1 Then HoneyView()
	  If GUICtrlRead($PotPlayer) = 1 Then PotPlayer()
	  If GUICtrlRead($KakaoTalk) = 1 Then KakaoTalk()
	  If GUICtrlRead($Discord) = 1 Then Discord()
	  If GUICtrlRead($TeamViewer) = 1 Then TeamViewer()
	  If GUICtrlRead($ClassicShell) = 1 Then ClassicShell()
	  If GUICtrlRead($Everything) = 1 Then Everything()
	  If GUICtrlRead($Git) = 1 Then Git()
	  If GUICtrlRead($VMwarePlayer) = 1 Then VMwarePlayer()
	  If GUICtrlRead($Bitdefender) = 1 Then Bitdefender()
	  WinSetState($wait, "", @SW_SHOW)
   Case $About
	  ShellExecute("Http://www.github.com/pxzhu/AutoIt")
EndSwitch
WEnd

Func Chrome() ;~ Chrome
   ;~ Download File URL
   Local $dFileURL = "https://download1490.mediafire.com/9toatuv7qhcg/r60s4o3i92hcy37/ChromeSetup.exe"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("Chrome Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "ChromeSetup.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(2500)
   ProgressOff()
   Sleep(2500)

   ;~ Install 'ChromeSetup.exe'
   Run("ChromeSetup.exe")
   WinWaitActive("Google Chrome 설치 프로그램", "닫기") ;~ Install Complete
   Send("{Enter}")
   Sleep(500)
   FileDelete(@ScriptDir & "\ChromeSetup.exe") ;~ Download File Delete
EndFunc
Func Whale() ;~ Whale
   ;~ Download File URL
   Local $dFileURL = "http://update.whale.naver.net/downloads/installers/WhaleSetup.exe"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("Whale Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "WhaleSetup.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(2500)
   ProgressOff()
   Sleep(2500)

   ;~ Install 'WhaleSetup.exe'
   Run("WhaleSetup.exe")
   WinWaitActive("네이버 웨일 설치", "") ;~ Installing
   Send("{Tab 4}{Space}")
   WinWaitActive("네이버 웨일에 오신 것을 환영합니다. - Whale", "Chrome Legacy Window")
   ProcessClose("Whale.exe")
   Sleep(500)
   FileDelete(@ScriptDir & "\WhaleSetup.exe") ;~ Download File Delete
EndFunc
Func Firefox() ;~ Firefox
   ;~ Download File URL
   Local $dFileURL = "http://download1509.mediafire.com/ghlkhteo6p7g/qn0xgtuo0br0m7u/Firefox+Installer.exe"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("Firefox Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "Firefox Installer.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(3000)
   ProgressOff()
   Sleep(3000)

   ;~ Install 'Firefox Installer.exe'
   Run("Firefox Installer.exe")
   WinWaitActive("Firefox를 사용해 주셔서 감사합니다. - Mozilla Firefox", "")
   ProcessClose("firefox.exe")
   Sleep(500)
   FileDelete(@ScriptDir & "\Firefox Installer.exe") ;~ Download File Delete
EndFunc
Func Notepad() ;~ Notepad
   ;~ Download File URL
   Local $dFileURL = "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.8.9/npp.7.8.9.Installer.exe"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("Notepad Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "Notepad.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(3000)
   ProgressOff()
   Sleep(3000)

   ;~ Install 'Notepad.exe'
   Run("Notepad.exe")
   WinWaitActive("Installer Language", "한국어")
   Send("{Enter}")
   WinWaitActive("Notepad++ v7.8.9 설치", "Notepad++ v7.8.9 설치를 시작합니다.")
   Send("{Enter}")
   WinWaitActive("Notepad++ v7.8.9 설치", "사용권 계약")
   Send("{Enter}")
   WinWaitActive("Notepad++ v7.8.9 설치", "설치 위치 선택")
   Send("{Enter}")
   WinWaitActive("Notepad++ v7.8.9 설치", "구성 요소 선택")
   Send("{Enter}")
   WinWaitActive("Notepad++ v7.8.9 설치", "Create Shortcut on Desktop")
   Send("{Enter}")
   WinWaitActive("Notepad++ v7.8.9 설치", "Notepad++ v7.8.9 설치 완료")
   Send("{Tab 2}{Space}{Tab}{Space}")
   Sleep(500)
   FileDelete(@ScriptDir & "\Notepad.exe") ;~ Download File Delete
EndFunc
Func VisualStudio2019Community() ;~ 미완성
   MsgBox(1,"1","5")
EndFunc
Func VisualStudioCode() ;~ VisualStudioCode
   ;~ Download File URL
   Local $dFileURL = "https://go.microsoft.com/fwlink/?Linkid=852157"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("VisualStudioCode Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "VisualStudioCode.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(3000)
   ProgressOff()
   Sleep(20000)

   ;~ Install 'VisualStudioCode.exe'
   Run("VisualStudioCode.exe")
   WinWaitActive("설치 - Microsoft Visual Studio Code", "사용권 계약")
   Send("!A")
   Send("!N")
   WinWaitActive("설치 - Microsoft Visual Studio Code", "대상 위치 선택")
   Send("!N")
   WinWaitActive("설치 - Microsoft Visual Studio Code", "시작 메뉴 폴더 선택")
   Send("!N")
   WinWaitActive("설치 - Microsoft Visual Studio Code", "추가 작업 선택")
   Send("!D")
   Send("!N")
   WinWaitActive("설치 - Microsoft Visual Studio Code", "설치 준비됨")
   Send("!I")
   WinWaitActive("설치 - Microsoft Visual Studio Code", "Visual Studio Code 설정 마법사를 완료하는 중")
   Send("{Space}")
   Send("!F")
   Sleep(500)
   FileDelete(@ScriptDir & "\VisualStudioCode.exe") ;~ Download File Delete
EndFunc
Func Eclipse() ;~ 미완성
   ;~ Download File URL
   Local $dFileURL = "http://download1475.mediafire.com/e1iy0ygqgj8g/8rg2p846h9l71s2/jdk-14.0.1_windows-x64_bin.exe"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("jdk-14.0.1 Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "jdk-14.0.1_windows-x64_bin.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(3000)
   ProgressOff()

   Local $dFileURL = "https://www.eclipse.org/downloads/download.php?file=/oomph/epp/2020-06/R/eclipse-inst-win64.exe&mirror_id=1142"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("Eclipse Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "eclipse-inst-win64.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(3000)
   ProgressOff()

   Sleep(3000)



;   http://download1643.mediafire.com/5jv92rv4cypg/j3qd6zfvlbmt8od/javaEnvironmentalVariables.bat

;   http://download1478.mediafire.com/8fho4rtjwllg/49y00fsr0sej4c2/Accept.bmp
;   http://download1351.mediafire.com/vuir7t2gjxdg/sra5a9tvbtw6z7q/Developer.bmp
;   http://download1582.mediafire.com/0feaqek7xrjg/5i5v9a6kn76b24n/Install.bmp
;   http://download1979.mediafire.com/9imqzdreqtmg/fqx4ryb526ernu4/Launch.bmp
EndFunc
Func BandiCamera() ;~ BandiCamera
   ;~ Download File URL
   Local $dFileURL = "https://kr.bandisoft.com/bandicamera/dl.php?web-kr"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("BandiCamera Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "BANDICAMERA-SETUP-KR.EXE", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(2500)
   ProgressOff()

   Local $dFileURL = "http://download1648.mediafire.com/nvmxbaiqtvmg/4lxa6x5l6011jrf/BandiCamera_Close.bmp"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("BandiCamera_Close Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "BandiCamera_Close.bmp", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(2500)
   ProgressOff()
   Sleep(2500)

   Local $CameraClose
   ;~ Install 'BANDICAMERA-SETUP-KR.EXE'
   Run("BANDICAMERA-SETUP-KR.EXE")
   WinWaitActive("반디카메라 3.04 설치", "반디카메라 설치 약관") ;~ Installing
   Send("{Enter}")
   While $CameraClose <> 1
	  $CameraClose = _ImageSearch("BandiCamera_Close.bmp", 1, $x, $y, 0, 0)
   WEnd
   MouseMove($x, $y)
   MouseClick("Left", $x, $y)
   ProcessWait("Bandicamera.exe")
   ProcessClose("Bandicamera.exe")
   FileDelete(@ScriptDir & "\BANDICAMERA-SETUP-KR.EXE") ;~ Download File Delete
   FileDelete(@ScriptDir & "\BandiCamera_Close.bmp")
EndFunc
Func OBSStudio() ;~ OBSStudio
   ;~ Download File URL
   Local $dFileURL = "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-25.0.8-Full-Installer-x64.exe"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("OBSStudio Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "OBSStudio.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(3000)
   ProgressOff()
   Sleep(3000)

   ;~ Install 'OBSStudio.exe'
   Run("OBSStudio.exe")
   WinWaitActive("OBS Studio 25.0.8 Setup", "Welcome to OBS Studio 25.0.8 Setup")
   Send("{Enter}")
   WinWaitActive("OBS Studio 25.0.8 Setup", "License Agreement")
   Send("{Enter}")
   WinWaitActive("OBS Studio 25.0.8 Setup", "Choose Install Location")
   Send("{Enter}")
   WinWaitActive("OBS Studio 25.0.8 Setup", "Click Finish to close Setup.")
   Send("{Tab 2}{Space}{Tab}{Enter}")
   Sleep(500)
   FileDelete(@ScriptDir & "\OBSStudio.exe") ;~ Download File Delete
EndFunc
Func Bandizip() ;~ Bandizip
   Local $dFileURL = "https://kr.bandisoft.com/bandizip/dl.php?online"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("Bandizip Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "Bandizip.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(3000)
   ProgressOff()

   Local $dFileURL = "http://download1474.mediafire.com/lv4uzkgb8pug/ugiki3j766d565g/Bandizip_close.bmp"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("Bandizip_Close Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "Bandizip_Close.bmp", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(3000)
   ProgressOff()
   Sleep(3000)

   Local $ZipClose
   ;~ Install 'Bandizip.exe'
   Run("Bandizip.exe")
   WinWaitActive("반디집 7.09 설치", "반디집 최종 사용자 이용 약관")
   Send("{Enter}")
   While $ZipClose <> 1
	  $ZipClose = _ImageSearch("Bandizip_Close.bmp", 1, $x, $y, 0, 0)
   WEnd
   MouseMove($x, $y)
   MouseClick("Left", $x, $y)
   WinWaitActive("반디집 7.09 (스탠더드)", "XWeb32Man")
   ProcessClose("Bandizip.exe")
   Sleep(500)
   FileDelete(@ScriptDir & "\Bandizip.exe") ;~ Download File Delete
   FileDelete(@ScriptDir & "\Bandizip_Close.bmp")
EndFunc
Func HoneyView() ;~ HoneyView
   ;~ Download File URL
   Local $dFileURL = "https://kr.bandisoft.com/honeyview/dl.php?web-kr"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("HoneyView Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "HoneyView.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(3000)
   ProgressOff()
   Sleep(3000)

   ;~ Install 'Firefox Installer.exe'
   Run("HoneyView.exe")
   WinWaitActive("꿀뷰 설치", "꿀뷰 설치 약관")
   Send("{Tab 6}{Space}{Tab 2}{Space}")
   WinWaitActive("꿀뷰 5.33", "")
   ProcessClose("Honeyview.exe")
   Sleep(500)
   FileDelete(@ScriptDir & "\HoneyView.exe") ;~ Download File Delete
EndFunc
Func PotPlayer() ;~ PotPlayer
   ;~ Download File URL
   Local $dFileURL = "https://t1.daumcdn.net/potplayer/PotPlayer/Version/Latest/PotPlayerSetup64.exe"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("PotPlayer Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "PotPlayer.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(3000)
   ProgressOff()
   Sleep(3000)

   ;~ Install 'PotPlayer Installer.exe'
   Run("PotPlayer.exe")
   WinWaitActive("Installer Language", "한국어")
   Send("{Enter}")
   WinWaitActive("팟플레이어-64비트 설치", "설치를 시작하기 전")
   Send("{Enter}")
   WinWaitActive("팟플레이어-64비트 설치", "사용권 계약")
   Send("{Enter}")
   WinWaitActive("팟플레이어-64비트 설치", "설치하려는 구성 요소 선택:")
   Send("{Down 9}{Space}{Down}{Space}{Down}{Space}{Tab 2}{Space}")
   WinWaitActive("팟플레이어-64비트 설치", "설치할 폴더를 선택해")
   Send("{Enter}")
   WinWaitActive("팟플레이어-64비트 설치", "설치 완료")
   Send("!{R}{Tab}{Space}")
   WinWaitActive("Open Codec for PotPlayer 설치 ", "사용권 계약")
   Send("{Enter}")
   WinWaitActive("Open Codec for PotPlayer 설치 ", "구성 요소 선택")
   Send("{Enter}")
   WinWaitActive("Open Codec for PotPlayer 설치 ", "설치 위치 선택")
   Send("{Enter}")
   WinWaitActive("Open Codec for PotPlayer 설치 ", "설치 완료")
   Send("{Enter}")

   Sleep(500)
   FileDelete(@ScriptDir & "\PotPlayer.exe") ;~ Download File Delete
EndFunc
Func KakaoTalk() ;~ KakaoTalk
   ;~ Download File URL
   Local $dFileURL = "http://app.pc.kakao.com/talk/win32/KakaoTalk_Setup.exe"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("KakaoTalk Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "KakaoTalk_Setup.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(3000)
   ProgressOff()
   Sleep(3000)

   ;~ Install 'KakaoTalk.exe'
   Run("KakaoTalk_Setup.exe")
   WinWaitActive("Installer Language", "한국어")
   Send("{Enter}")
   WinWaitActive("카카오톡 설치", "컴퓨터에 카카오톡을 설치합니다.")
   Send("{Enter}")
   WinWaitActive("카카오톡 설치", "카카오톡을 설치할 폴더를 선택해 주세요.")
   Send("{Enter}")
   WinWaitActive("카카오톡 설치", "설치하려는 구성 요소 선택:")
   Send("{Down}{Space}{Down}{Space}{Down}{Space}{Tab 2}{Space}")
   WinWaitActive("카카오톡 설치", "카카오톡 설치 완료")
   Send("{Tab 2}{Space}{Tab}{Space}")
   Sleep(500)
   FileDelete(@ScriptDir & "\KakaoTalk_Setup.exe") ;~ Download File Delete
EndFunc
Func Discord() ;~ Discord
   ;~ Download File URL
   Local $dFileURL = "https://discord.com/api/download?platform=win"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("Discord Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "Discord.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(3000)
   ProgressOff()
   Sleep(3000)

   ;~ Install 'Discord.exe'
   Run("Discord.exe")
   WinWaitActive("Discord", "Chrome Legacy Window")
   ProcessClose("Discord.exe")
   Sleep(500)
   FileDelete(@ScriptDir & "\Discord.exe") ;~ Download File Delete
EndFunc
Func TeamViewer() ;~ TeamViewer
   ;~ Download File URL
   Local $dFileURL = "https://download.teamviewer.com/download/TeamViewer_Setup.exe"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("TeamViewer Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "TeamViewer.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(3000)
   ProgressOff()
   Sleep(3000)

   ;~ Install 'TeamViewer.exe'
   Run("TeamViewer.exe")
   WinWaitActive("TeamViewer 설치", "TeamViewer를 선택해 주셔서 감사합니다.")
   Send("{Tab 4}{Space}{Tab}{Enter}")
   WinWaitActive("TeamViewer", "연결")
   ProcessClose("TeamViewer.exe")
   WinWait("TeamViewer 사용 방법:", "", 10)
   Send("!{F4}")
   Sleep(500)
   FileDelete(@ScriptDir & "\TeamViewer.exe") ;~ Download File Delete
EndFunc
Func ClassicShell() ;~ ClassicShell
   ;~ Download File URL
   Local $dFileURL = "http://download1460.mediafire.com/izb53yri9w4g/06fgmh9arq7cvcb/ClassicShellSetup_4_3_1.exe"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("ClassicShell Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "ClassicShellSetup_4_3_1.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(3000)
   ProgressOff()
   Sleep(3000)

   ;~ Install 'ClassicShell.exe'
   Run("ClassicShellSetup_4_3_1.exe")
   WinWaitActive("Classic Shell Setup", "The Setup Wizard will install")
   Send("{Enter}")
   WinWaitActive("Classic Shell Setup", "I &accept the terms in the License Agreement")
   Send("{Space}{Tab 2}{Enter}")
   WinWaitActive("Classic Shell Setup", "Tree of selections")
   Send("{Tab 5}{Space}{Tab 4}{Enter}")
   WinWaitActive("Classic Shell Setup", "Ready to install Classic Shell")
   Send("{Enter}")
   WinWaitActive("Classic Shell Setup", "Click the Finish button")
   Send("{Tab 4}{Space}{Tab}{Enter}")
   Sleep(500)
   FileDelete(@ScriptDir & "\ClassicShellSetup_4_3_1.exe") ;~ Download File Delete
EndFunc
Func Everything() ;~ Everything
   ;~ Download File URL
   Local $dFileURL = "https://www.voidtools.com/Everything-1.4.1.969.x64-Setup.exe"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("Everything Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "Everything.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(3000)
   ProgressOff()
   Sleep(3000)

   ;~ Install 'Everything.exe'
   Run("Everything.exe")
   WinWaitActive("Everything 설치", "한국어")
   Send("{Enter}")
   WinWaitActive("Everything 설치", "동의함")
   Send("{Enter}")
   WinWaitActive("Everything 설치", "설치 위치 선택")
   Send("{Enter}")
   WinWaitActive("Everything 설치", "설치 옵션 선택")
   Send("{Enter}")
   WinWaitActive("Everything 설치", "시작 시 업데이트 확인")
   Send("{Tab}{Space}{Tab 3}{Space}{Tab 6}{Space}")
   WinWaitActive("Everything 설치", "Everything 설치 완료")
   Send("{Tab 2}{Space}{Tab}{Space}")
   Sleep(500)
   FileDelete(@ScriptDir & "\Everything.exe") ;~ Download File Delete
EndFunc
Func Git() ;~ Git
   ;~ Download File URL
   Local $dFileURL = "https://github.com/git-for-windows/git/releases/download/v2.27.0.windows.1/Git-2.27.0-64-bit.exe"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("Git Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "Git.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(3000)
   ProgressOff()
   Sleep(20000)

   ;~ Install 'Git.exe'
   Run("Git.exe")
   WinWaitActive("Git 2.27.0 Setup", "Please read the following important")
   Send("{Enter}")
   WinWaitActive("Git 2.27.0 Setup", "Select Destination Location")
   Send("{Enter}")
   WinWaitActive("Git 2.27.0 Setup", "Select Components")
   Send("{Enter}")
   WinWaitActive("Git 2.27.0 Setup", "Select Start Menu Folder")
   Send("{Enter}")
   WinWaitActive("Git 2.27.0 Setup", "Choosing the default editor used by Git")
   Send("{Enter}")
   WinWaitActive("Git 2.27.0 Setup", "Adjusting your PATH environment")
   Send("{Enter}")
   WinWaitActive("Git 2.27.0 Setup", "Choosing HTTPS transport backend")
   Send("{Enter}")
   WinWaitActive("Git 2.27.0 Setup", "Configuring the line ending conversions")
   Send("{Enter}")
   WinWaitActive("Git 2.27.0 Setup", "Configuring the terminal")
   Send("{Enter}")
   WinWaitActive("Git 2.27.0 Setup", "Choose the default")
   Send("{Enter}")
   WinWaitActive("Git 2.27.0 Setup", "Configuring extra options")
   Send("{Tab}{Space}{Tab 3}{Space}")
   WinWaitActive("Git 2.27.0 Setup", "Configuring experimental options")
   Send("{Space}{Tab 2}{Space}")
   WinWaitActive("Git 2.27.0 Setup", "Completing the Git Setup Wizard")
   Send("{Tab}{Space}{Tab}{Enter}")
   Sleep(500)
   FileDelete(@ScriptDir & "\Git.exe") ;~ Download File Delete
EndFunc
Func VMwarePlayer() ;~ 미완성
   ;~ Download File URL
   Local $dFileURL = "http://download1591.mediafire.com/fonvd07i5pug/11qyd1uifp02tdk/VMwarePlayer.exe"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("VMwarePlayer Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "VMwarePlayer.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(3000)
   ProgressOff()
   Sleep(20000)

   ;~ Install 'VMwarePlayer.exe'
   Run("VMwarePlayer.exe")
   WinWaitActive("", "")
   Send("{Enter}")
   WinWaitActive("", "")
   Send("{Enter}")
EndFunc
Func Bitdefender() ;~ Bitdefender
   ;~ Download File URL
   Local $dFileURL = "https://download.bitdefender.com/windows/installer/en-us/bitdefender_tsecurity.exe"
   Local $filesize = InetGetSize( $dFileURL ) ;~ File Size Check

   ProgressOn("Bitdefender Download", "Downloading...", "0% Downloading...")

   Local $hDownload = InetGet($dFileURL, "Bitdefender.exe", 1, 1) ;~ File Download

   While @InetGetActive ;~ File 0 ~ 100% Download Progress
	  Local $downsize = @InetGetBytesRead
	  Local $percent = ($downsize / $filesize) * 100
	  $percent = Int($percent)
	  ProgressSet($percent, $percent & "% Downloading...")
	  Sleep(500)
   WEnd
   ProgressSet(100 , "Download Complete", "Complete")
   Sleep(3000)
   ProgressOff()
   Sleep(3000)

   ;~ Install 'Bitdefender.exe'
   Run("Bitdefender.exe")
EndFunc
