function Script_Trigger_ShrineOfIllusion_StalfosDoors()
{
	if Register_Registered(Registers.Door_Stalfos_03) = false
	{
		Register_Add(Registers.Door_Stalfos_03,true)
	}
}

function Script_Trigger_ShrineOfIllusion_StalfosSpikes()
{
	if Register_Registered(Registers.Door_Stalfos_19) = false
	{
		Register_Add(Registers.Door_Stalfos_19,true)
	}
}
