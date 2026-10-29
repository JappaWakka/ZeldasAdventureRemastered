function Script_Trigger_ShrineOfIllusion_KeyVire()
{
	if Register_Registered(Registers.Key_Vire) = false
	{
		instance_create_layer(7084,6388,"Items_AboveForeground",Entity_Pickup_Key)
	}
}

function Script_Trigger_ShrineOfIllusion_KeyMolluska()
{
	if Register_Registered(Registers.Key_Molluska) = false
	{
		instance_create_layer(9400,4944,"Items_AboveForeground",Entity_Pickup_Key)
	}
}
