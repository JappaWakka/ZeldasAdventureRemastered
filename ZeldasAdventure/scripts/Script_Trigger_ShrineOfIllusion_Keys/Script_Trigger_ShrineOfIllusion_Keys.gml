function Script_Trigger_ShrineOfIllusion_KeyMolluska()
{
	if Register_Registered(Registers.Key_Molluska) = false
	{
		instance_create_layer(9400,4944,"Items_AboveForeground",Entity_Pickup_Key)
	}
}