;~ Made by pxzhu
;~ 2020-07-16 Start

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
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
Global $x = 0, $y = 0

While 1
$nMsg = GUIGetMsg()
Switch $nMsg
   Case $GUI_EVENT_CLOSE ;~ FileDelete All
;	  FileDelete(@ScriptDir & "\ChromeSetup.exe")
;	  FileDelete(@ScriptDir & "\WhaleSetup.exe")
;	  FileDelete(@ScriptDir & "\Firefox Installer.exe")
;	  FileDelete(@ScriptDir & "\BANDICAMERA-SETUP-KR.EXE")
;	  FileDelete(@ScriptDir & "\BandiCamera_Close.bmp")
;	  FileDelete(@ScriptDir & "\ImageSearchDLLx32.dll")
;	  FileDelete(@ScriptDir & "\ImageSearchDLLx64.dll")
;	  FileDelete(@ScriptDir & "\msvcr110.dll")
;	  FileDelete(@ScriptDir & "\msvcr110d.dll")
;	  If FileExists("msvcr110d.dll") Then FileDelete(@ScriptDir & "\ChromeSetup.exe")
;	  If FileExists("msvcr110d.dll") Then FileDelete(@ScriptDir & "\WhaleSetup.exe")
;	  If FileExists("msvcr110d.dll") Then FileDelete(@ScriptDir & "\Firefox Installer.exe")
;	  If FileExists("BANDICAMERA-SETUP-KR.EXE") Then FileDelete(@ScriptDir & "\BANDICAMERA-SETUP-KR.EXE")
;	  If FileExists("BandiCamera_Close.bmp") Then FileDelete(@ScriptDir & "\BandiCamera_Close.bmp")
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
	  GUICtrlSetState($VisualStudio2019Community, $GUI_CHECKED)
	  GUICtrlSetState($VisualStudioCode, $GUI_CHECKED)
	  GUICtrlSetState($Eclipse, $GUI_CHECKED)
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
	  GUICtrlSetState($VMwarePlayer, $GUI_CHECKED)
   Case $SelectDefault
	  GUICtrlSetState($Chrome, $GUI_UNCHECKED)
	  GUICtrlSetState($Whale, $GUI_UNCHECKED)
	  GUICtrlSetState($Firefox, $GUI_UNCHECKED)
	  GUICtrlSetState($Notepad, $GUI_UNCHECKED)
	  GUICtrlSetState($VisualStudio2019Community, $GUI_UNCHECKED)
	  GUICtrlSetState($VisualStudioCode, $GUI_UNCHECKED)
	  GUICtrlSetState($Eclipse, $GUI_UNCHECKED)
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
	  GUICtrlSetState($VMwarePlayer, $GUI_UNCHECKED)
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
	  If GUICtrlRead($Bitdefender) = 1 Then Bitdefender()
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
Func Notepad() ;~
   MsgBox(1,"1","4")
EndFunc
Func VisualStudio2019Community() ;~
   MsgBox(1,"1","5")
EndFunc
Func VisualStudioCode() ;~
   MsgBox(1,"1","6")
EndFunc
Func Eclipse() ;~
   MsgBox(1,"1","7")
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
Func OBSStudio() ;~
   MsgBox(1,"1","9")
EndFunc
Func Bitdefender() ;~
   MsgBox(1,"1","10")
EndFunc
Func Bandizip() ;~
   MsgBox(1,"1","11")
EndFunc
Func HoneyView() ;~
   MsgBox(1,"1","12")
EndFunc
Func PotPlayer() ;~
   MsgBox(1,"1","13")
EndFunc
Func KakaoTalk() ;~
   MsgBox(1,"1","14")
EndFunc
Func Discord() ;~
   MsgBox(1,"1","15")
EndFunc
Func TeamViewer() ;~
   MsgBox(1,"1","16")
EndFunc
Func ClassicShell() ;~
   MsgBox(1,"1","17")
EndFunc
Func Everything() ;~
   MsgBox(1,"1","18")
EndFunc
Func Git() ;~
   MsgBox(1,"1","19")
EndFunc
Func VMwarePlayer() ;~
   MsgBox(1,"1","20")
EndFunc
