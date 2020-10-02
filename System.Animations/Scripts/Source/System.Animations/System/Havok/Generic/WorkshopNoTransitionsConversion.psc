ScriptName System:Havok:Generic:WorkshopNoTransitionsConversion Extends System:Havok:Type
{Data\Meshes\GenericBehaviors\WorkshopNoTransitionsConversion\WorkshopNoTransitionsConversion.xml}

hkaEvent Property TurnOff Hidden
	hkaEvent Function Get()
		hkaEvent structure = new hkaEvent
		structure.Name = "TurnOff"
		return structure
	EndFunction
EndProperty

hkaEvent Property Convert Hidden
	hkaEvent Function Get()
		hkaEvent structure = new hkaEvent
		structure.Name = "Convert"
		return structure
	EndFunction
EndProperty

hkaEvent Property TurnOn Hidden
	hkaEvent Function Get()
		hkaEvent structure = new hkaEvent
		structure.Name = "TurnOn"
		return structure
	EndFunction
EndProperty

hkaEvent Property SoundPlay Hidden
	hkaEvent Function Get()
		hkaEvent structure = new hkaEvent
		structure.Name = "SoundPlay"
		return structure
	EndFunction
EndProperty

hkaEvent Property SoundStop Hidden
	hkaEvent Function Get()
		hkaEvent structure = new hkaEvent
		structure.Name = "SoundStop"
		return structure
	EndFunction
EndProperty

hkaEvent Property SoundPlayAt Hidden
	hkaEvent Function Get()
		hkaEvent structure = new hkaEvent
		structure.Name = "SoundPlayAt"
		return structure
	EndFunction
EndProperty

hkaEvent Property AdditionalEvent01 Hidden
	hkaEvent Function Get()
		hkaEvent structure = new hkaEvent
		structure.Name = "AdditionalEvent01"
		return structure
	EndFunction
EndProperty

hkaEvent Property AdditionalEvent02 Hidden
	hkaEvent Function Get()
		hkaEvent structure = new hkaEvent
		structure.Name = "AdditionalEvent02"
		return structure
	EndFunction
EndProperty

hkaEvent Property AdditionalEvent03 Hidden
	hkaEvent Function Get()
		hkaEvent structure = new hkaEvent
		structure.Name = "AdditionalEvent03"
		return structure
	EndFunction
EndProperty

hkaEvent Property AdditionalEvent04 Hidden
	hkaEvent Function Get()
		hkaEvent structure = new hkaEvent
		structure.Name = "AdditionalEvent04"
		return structure
	EndFunction
EndProperty

hkaEvent Property IsOff Hidden
	hkaEvent Function Get()
		hkaEvent structure = new hkaEvent
		structure.Name = "IsOff"
		return structure
	EndFunction
EndProperty

hkaEvent Property IsOn Hidden
	hkaEvent Function Get()
		hkaEvent structure = new hkaEvent
		structure.Name = "IsOn"
		return structure
	EndFunction
EndProperty

hkaEvent Property TurnOnNoTransition Hidden
	hkaEvent Function Get()
		hkaEvent structure = new hkaEvent
		structure.Name = "TurnOnNoTransition"
		return structure
	EndFunction
EndProperty

hkaEvent Property TurnOffNoTransition Hidden
	hkaEvent Function Get()
		hkaEvent structure = new hkaEvent
		structure.Name = "TurnOffNoTransition"
		return structure
	EndFunction
EndProperty

hkaEvent Property Powered Hidden
	hkaEvent Function Get()
		hkaEvent structure = new hkaEvent
		structure.Name = "Powered"
		return structure
	EndFunction
EndProperty

hkaEvent Property Unpowered Hidden
	hkaEvent Function Get()
		hkaEvent structure = new hkaEvent
		structure.Name = "Unpowered"
		return structure
	EndFunction
EndProperty
hkaEvent Property Reset Hidden
	hkaEvent Function Get()
		hkaEvent structure = new hkaEvent
		structure.Name = "Reset"
		return structure
	EndFunction
EndProperty