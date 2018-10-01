#CommentFlag //

// #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
// #Warn  ; Enable warnings to assist with detecting common errors.
// SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force

// F5 for /oos
// F6 for /remaining
// F7 for kick yourself
// F8 for /hideout
// F9 for buying stuff from vendor.
// F10 for 6S ing.
// F11 for 6L ing.
// End for terminating the macro.

F5::
	Send, {Enter}
	Sleep, 5
	Send, /oos
	Sleep, 5
	Send, {Enter}
	Return
	
F6::
	Send, {Enter}
	Sleep, 5
	Send, /remaining
	Sleep, 5
	Send, {Enter}
	Return
	
F7::
	Send, {Enter}
	Sleep, 5
	Send, /kick NagaElementalist //Insert your character name here!
	Sleep, 5
	Send, {Enter}
	Return

F8::
	Send, {Enter}
	Sleep, 5
	Send, /hideout
	Sleep, 5
	Send, {Enter}
	Return

F9::
	Send, {Ctrl down}
	Sleep, 5

	Loop 
	{
		Random, rand, 90, 100
		Send, {LButton down}
		Sleep, rand
	
		Send, {LButton up}
		Sleep, 5
		
		if (!GetKeyState("F9", "p"))
		{
			Send, {Ctrl up}
			Sleep, 5
			break
		}
	}
	Return
	
F10::
	DllCall("SetCursorPos", int, 116, int, 476)
	Send, {RButton down}
	Sleep, 5
	Send, {RButton up}
	Sleep, 5
	Send, {Shift down}
	Sleep, 5
	DllCall("SetCursorPos", int, 334, int, 515)
	Sleep, 5
	
	Loop 
	{
		Random, rand, 90, 100
		Send, {LButton down}
		Sleep, rand
	
		Send, {LButton up}
		Sleep, 5
		
		if (!GetKeyState("F10", "p"))
		{
			Send, {Shift up}
			Sleep, 5
			break
		}
	}
	Return
	
F11::
	DllCall("SetCursorPos", int, 173, int, 476)
	Send, {RButton down}
	Sleep, 5
	Send, {RButton up}
	Sleep, 5
	Send, {Shift down}
	Sleep, 5
	DllCall("SetCursorPos", int, 334, int, 515)
	Sleep, 5
	
	Loop 
	{
		Random, rand, 90, 100
		Send, {LButton down}
		Sleep, rand
	
		Send, {LButton up}
		Sleep, 5
		
		if (!GetKeyState("F11", "p"))
		{
			Send, {Shift up}
			Sleep, 5
			break
		}
	}
	Return
	
End::
    ExitApp
	return