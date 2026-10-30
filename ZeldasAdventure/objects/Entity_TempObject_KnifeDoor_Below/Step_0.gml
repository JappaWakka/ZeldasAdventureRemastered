if Register_Registered(Registers.Knife_Used) = true
{
	visible = true
	if instance_exists(Collision_ShrineOfIllusion_15_KnifeDoor) = true
	{
		instance_deactivate_object(Collision_ShrineOfIllusion_15_KnifeDoor)
	}
}
else
{
	visible = false
	if instance_exists(Collision_ShrineOfIllusion_15_KnifeDoor) = false
	{
		instance_activate_object(Collision_ShrineOfIllusion_15_KnifeDoor)
	}
}