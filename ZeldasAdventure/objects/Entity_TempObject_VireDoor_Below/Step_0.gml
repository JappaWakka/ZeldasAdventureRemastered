if Register_Registered(Registers.Door_Vire) = true
{
	visible = true
	if instance_exists(Collision_ShrineOfIllusion_06_VireDoor) = true
	{
		instance_deactivate_object(Collision_ShrineOfIllusion_06_VireDoor)
	}
}
else
{
	visible = false
	if instance_exists(Collision_ShrineOfIllusion_06_VireDoor) = false
	{
		instance_activate_object(Collision_ShrineOfIllusion_06_VireDoor)
	}
}