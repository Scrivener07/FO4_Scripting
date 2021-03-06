ScriptName System:Collections:Queue Extends System:Collections:Collection Default
{Represents a first-in-first-out (FIFO) collection of objects.
https://msdn.microsoft.com/en-us/library/7977ey2c(v=vs.110).aspx}
import System
import System:Activator

var[] Items

; Constructor
;---------------------------------------------

Queue Function Type() Global
	return This().Type(0x0000083E) as Queue
EndFunction


; Events
;---------------------------------------------

Event OnInit()
	Items = new var[0]
EndEvent


; Methods
;---------------------------------------------

Function Enqueue(var object)
	{Adds an object to the end of the Queue}
	Items.Add(object)
EndFunction


var Function Dequeue()
	{Removes and returns the object at the beginning of the Queue}
	var item = Items[First]
	Items.Remove(First)
	return item
EndFunction


var Function Peek()
	{Returns the object at the beginning of the Queue<T> without removing it.}
	return Items[First]
EndFunction


; Properties
;---------------------------------------------

Group Collection
	int Property Count Hidden
		int Function Get()
			{Gets the number of elements contained in the collection.}
			return Items.Length
		EndFunction
	EndProperty

	int Property First Hidden
		int Function Get()
			return 0
		EndFunction
	EndProperty
EndGroup
