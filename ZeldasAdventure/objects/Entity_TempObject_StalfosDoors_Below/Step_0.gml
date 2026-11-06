if Register_Registered(Registers.Door_Stalfos_03) = true
{
	visible = true
	if instance_exists(Collision_ShrineOfIllusion_03_StalfosDoors) = true
	{
		instance_deactivate_object(Collision_ShrineOfIllusion_03_StalfosDoors)
	}
}
else
{
	visible = false
	if instance_exists(Collision_ShrineOfIllusion_03_StalfosDoors) = false
	{
		instance_activate_object(Collision_ShrineOfIllusion_03_StalfosDoors)
	}
}