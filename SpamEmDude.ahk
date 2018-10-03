#CommentFlag //

// #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
// #Warn  ; Enable warnings to assist with detecting common errors.
// SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force

//V1.01

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
	Loop 
	{
		Random, rand, 125, 135
		Send {Click}
		Sleep, rand
		
		if (!GetKeyState("F9", "p"))
		{
			Send, {Ctrl up}
			break
		}
	}
	Return
	
F10::
	Send {Click 116, 476, right}
	Sleep, 10
	Send, {Shift down}
	Loop 
	{
		Random, rand, 125, 135
		Send {Click 334, 515}
		Sleep, rand
		
		if (!GetKeyState("F10", "p"))
		{
			Send, {Shift up}
			break
		}
	}
	Return
	
	
F11::	
	Send {Click 173, 476, right}
	Sleep, 10
	Send, {Shift down}
	Loop 
	{
		Random, rand, 125, 135
		Send {Click 334, 515}
		Sleep, rand
		
		if (!GetKeyState("F11", "p"))
		{
			Send, {Shift up}
			break
		}
	}
	Return
	
End::
    ExitApp
	return