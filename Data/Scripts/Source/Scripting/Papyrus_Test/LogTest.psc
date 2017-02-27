ScriptName Papyrus_Test:LogTest extends Lilac
import Papyrus:Diagnostics:Log


UserLog Log

; Events
;---------------------------------------------
Event OnInit()
	Log = new UserLog
	Log.Caller = self
	Log.FileName = "Scripting_Test"
    parent.OnInit()
EndEvent


; Lilac
;---------------------------------------------

Function Setup()
	WriteLine(Log, "Executing the Setup function.")
	EnableVerboseLogging()
EndFunction


Function TestSuites()
	WriteLine(Log, "Executing the TestSuites function.")
	describe("The context", Suite1())
EndFunction


; Suites
;---------------------------------------------

bool Function Suite1()
	WriteLine(Log, "Executing the Suite1 function.")
	return false
EndFunction
