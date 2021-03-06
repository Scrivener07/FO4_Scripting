ScriptName SystemTests:HUDFramework:Widget Extends System:HUDFramework:HUDWidget
import System:Log
import System:PointType

string WidgetID = "TestWidget.swf" const
int Step = 10 const

; Keys
int Up = 104 const
int Down = 98 const
int Left = 100 const
int Right = 102 const

; UP  38
; LEFT  37
; DOWN  40
; RIGHT  39
;
; Num8  104
; Num2  98
; Num4  100
; Num6  102

; Widget
;---------------------------------------------

WidgetData Function Create()
	WidgetData widget = new WidgetData
	widget.ID = WidgetID
	widget.LoadNow = true
	widget.AutoLoad = true
	widget.X = 0
	widget.Y = 0
	return widget
EndFunction


; Events
;---------------------------------------------

Event OnInitialize()
	WriteLine("System", self, "OnInitialize")
EndEvent


Event OnEnable()
	Load()
	RegisterForKeys()
	WriteLine("System", self, "OnEnable")
EndEvent


Event OnDisable()
	Unload()
	RegisterForKeys()
	WriteLine("System", self, "OnDisable")
EndEvent


Event OnWidgetLoaded()
	SendText("Command", "Value")
	RegisterForKeys()
	WriteLine("System", self, "OnWidgetLoaded")
EndEvent


Event OnKeyDown(int keyCode)
	WriteNotification("System", self, "Pressed the '"+keyCode+"' key.")

	If (keyCode == Up)
		Position = PointAddition(Position, PointMultiply(Down(), Step))

	ElseIf (keyCode == Down)
		Position = PointAddition(Position, PointMultiply(Up(), Step))

	ElseIf (keyCode == Left)
		Position = PointAddition(Position, PointMultiply(Left(), Step))

	ElseIf (keyCode == Right)
		Position = PointAddition(Position, PointMultiply(Right(), Step))

	Else
		WriteNotification("System", self, "Unhandled key '"+keyCode+"' has been pressed.")
	EndIf
EndEvent


; Functions
;---------------------------------------------

Function RegisterForKeys()
	RegisterForKey(Up)
	RegisterForKey(Down)
	RegisterForKey(Left)
	RegisterForKey(Right)
EndFunction
