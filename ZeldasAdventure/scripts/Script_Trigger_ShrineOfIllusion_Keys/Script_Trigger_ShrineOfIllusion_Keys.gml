function Script_Trigger_ShrineOfIllusion_KeyMolluska()
{
	if Register_Registered("ShrineOfIllusion_KeyMolluska") = false
	{
		instance_create_layer(9400,4944,"Items_AboveForeground",Entity_Pickup_Key)
	}
}