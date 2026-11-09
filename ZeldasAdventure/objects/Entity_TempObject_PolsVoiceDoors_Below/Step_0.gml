if Register_Registered(Registers.Door_PolsVoice) = true
{
	visible = false
	if instance_exists(Collision_ShrineOfIllusion_07_PolsVoiceDoors) = true
	{
		instance_deactivate_object(Collision_ShrineOfIllusion_07_PolsVoiceDoors)
	}
}
else
{
	visible = true
	if instance_exists(Collision_ShrineOfIllusion_07_PolsVoiceDoors) = false
	{
		instance_activate_object(Collision_ShrineOfIllusion_07_PolsVoiceDoors)
	}
}