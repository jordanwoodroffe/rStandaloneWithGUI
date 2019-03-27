

;-----------Set Conditions-------------

#SingleInstance, force
#NoEnv
SendMode Input

;IfNotExist, bear 3.bmp, C:\Users\camer\Desktop\Jordan's shit\AK\Program files
;IfNotExist, move.bmp, C:\Users\camer\Desktop\Jordan's shit\AK\Program files
;IfNotExist, help.bmp, C:\Users\camer\Desktop\Jordan's shit\AK\Program files

;UNABLE to set relative paths, adjusting Abolute Path accordingly


;-----------File Installs--------------

FileCreateDir,%A_ScriptDir%\Program files
SetWorkingDir,%A_ScriptDir%\Program files

FileInstall, Program files\bear 3.bmp, %A_WorkingDir%\bear 3.bmp, 1 
FileInstall, Program files\move.bmp, %A_WorkingDir%\move.bmp, 1 
FileInstall, Program files\help.bmp, %A_WorkingDir%\help.bmp, 1





;-------------GUI design--------------


Gui, Font, cBlack
Gui, -Caption
Gui, Add, Picture, x0 y0 w200 h285 BackgroundTrans AltSubmit , bear 3.bmp
Gui, Add, Picture, x168 y6 w24 h24 Center GuiMove, move.bmp
Gui, Add, Picture, gA1 x139 y6 w24 h24 , help.bmp
Gui, Add, Button, x71 y82 w50 h20, Go
Gui, Add, ComboBox, x38 y47 vMyList, Assault Rifle||P250|Semi Rifle|m92|Python
Gui, Show, w200 h120
Return

uiMove:
PostMessage, 0xA1, 2,,, A 
Return 



;--------------Program----------------



ButtonGo:
Gui,1: Submit, NoHide


bullets = 0

LShift & ~LButton::
	
	if (MyList = "Semi Rifle") {
	while GetKeyState("LButton","LShift") {
		if (bullets < 5000) 
		mouseXY(0,8)    
		sleep 1
		bullets += 1
																					

		}
		bullets = 0
		Return

		mouseXY(x,y)
		{
		DllCall("mouse_event",int,1,int,x,int,y,uint,0,uint,0)
		}
    	}
	if (MyList = "Semi Rifle P") {
	while GetKeyState("LButton","LShift") {
		if (bullets < 5000) 
		Send {LButton}
		mouseXY(0,6)    
		sleep 5
		bullets += 1
																					

		}
		bullets = 0
		Return

													
		{
		DllCall("mouse_event",int,1,int,x,int,y,uint,0,uint,0)
		}
    	}
	if (MyList = "Assault Rifle") {
	while GetKeyState("LButton","LShift") {
		if (bullets < 5000) 
		Send {LButton}
		mouseXY(0,11)    
		sleep 5
		bullets += 1
																					

		}
		bullets = 0
		Return

													
		{
		DllCall("mouse_event",int,1,int,x,int,y,uint,0,uint,0)
		}
   	}
	if (MyList = "m92") {
	while GetKeyState("LButton","LShift") {
		if (bullets < 5000) 
		mouseXY(0,7)    
		sleep 5
		bullets += 1																			
		}
		bullets = 0
		Return

													
		{
		DllCall("mouse_event",int,1,int,x,int,y,uint,0,uint,0)
		}
    	}
	if (MyList = "m92 Auto") {
	while GetKeyState("LButton","LShift") {
		if (bullets < 5000) 
		Send {LButton}
		mouseXY(0,7)    
		sleep 5
		bullets += 1
																					

		}
		bullets = 0
		Return

													
		{
		DllCall("mouse_event",int,1,int,x,int,y,uint,0,uint,0)
		}
    	}
	if (MyList = "P250") {
	while GetKeyState("LButton","LShift") {
		if (bullets < 5000) 
		mouseXY(0,9)    
		sleep 5
		bullets += 1
																					

		}
		bullets = 0
		Return

													
		{
		DllCall("mouse_event",int,1,int,x,int,y,uint,0,uint,0)
		}
   	}
	if (MyList = "Python") {
	while GetKeyState("LButton","LShift") {
		if (bullets < 5000) 
		mouseXY(0,14)    
		sleep 5
		bullets += 1
																					

		}
		bullets = 0
		Return

													
		{
		DllCall("mouse_event",int,1,int,x,int,y,uint,0,uint,0)
		}
    }
Return




;---------------HELP BOX------------------

A1:
msgbox,----------------------------------Build-------------------------------------`nBuild 1.0`n----------------------------------Help--------------------------------------`n`nIn order for the script to function you must set your in-game`nsensitivity to 0.4. Note that if you play on slower or faster `nsensitivity do not stress simply change your mouse DPI to how `nyou like it as it will have no affect on the script`n`n----------------------------------Help--------------------------------------
return

;---------------EXIT KEYS-----------------


Esc::ExitApp
