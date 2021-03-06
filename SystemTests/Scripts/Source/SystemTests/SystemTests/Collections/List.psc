ScriptName SystemTests:Collections:List Extends System:Diagnostics:UnitTest
import System:Debug

; Test Runner
;---------------------------------------------

Function Setup()
	WriteLine("System", self, "Executing the Setup function.")
	EnableVerboseLogging()
EndFunction


Function TestSuites()
	WriteLine("System", self, "Executing the TestSuites function.")
	Describe("List IndexOf", IndexOfSuite())
EndFunction


Function BeforeAll()
	MyList.Clear()
EndFunction


Function BeforeEach()
	MyList.Add("Hello") ;0
	MyList.Add("World") ;1
	MyList.Add("Hello World") ;2
	MyList.Add(1) ;3
	MyList.Add(2) ;4
	MyList.Add(3) ;5
	MyList.Add(1.0) ;6
	MyList.Add(2.0) ;7
	MyList.Add(3.0) ;8
	MyList.Add(true) ;9
	MyList.Add(true) ;10
	MyList.Add(false) ;11
	MyList.Add(false) ;12
	MyList.Add(Bourbon) ;13
	MyList.Add(Bubblegum) ;14
	MyList.Add(Cram) ;15
EndFunction


Function AfterEach()
	MyList.Clear()
EndFunction


Function AfterAll()
	MyList.Clear()
EndFunction


; IndexOf
;---------------------------------------------

bool Function IndexOfSuite()
	IndexOf_IT("Hello", 0)
	IndexOf_IT("World", 1)
	IndexOf_IT("Hello World", 2)
	IndexOf_IT(1, 3)
	IndexOf_IT(2, 4)
	IndexOf_IT(3, 5)
	IndexOf_IT(1.0, 6)
	IndexOf_IT(2.0, 7)
	IndexOf_IT(3.0, 8)
	IndexOf_IT(true, 9)
	IndexOf_IT(false, 11)
	IndexOf_IT(Bourbon, 13)
	IndexOf_IT(Bubblegum, 14)
	IndexOf_IT(Cram, 15)
	return Done
EndFunction


Function IndexOf_IT(var object, int expected)
	It("should return the expected index of '"+expected+"' for the '"+object+"' object.", IndexOf_Expect(object, expected))
EndFunction


bool Function IndexOf_Expect(var object, int expected)
	Expect(MyList.IndexOf(object), To, BeEqualTo, expected)
	return Done
EndFunction


; Containing
;---------------------------------------------
; Adding
;---------------------------------------------
; Inserting
;---------------------------------------------
; Removing
;---------------------------------------------


; Properties
;---------------------------------------------

Group Actuals
	System:Collections:List Property MyList Auto Const Mandatory
EndGroup

Group Properties
	Potion Property Bourbon Auto Const Mandatory
	Potion Property Bubblegum Auto Const Mandatory
	Potion Property Cram Auto Const Mandatory
EndGroup
