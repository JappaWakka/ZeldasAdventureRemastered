if Register_Registered(Registers.BlackOrb_Placed) = true
{
	visible = false
	if instance_exists(Collision_ShrineOfIllusion_14_BlackOrbDoor) = true
	{
		instance_deactivate_object(Collision_ShrineOfIllusion_14_BlackOrbDoor)
	}
}
else
{
	visible = true
	if instance_exists(Collision_ShrineOfIllusion_14_BlackOrbDoor) = false
	{
		instance_activate_object(Collision_ShrineOfIllusion_14_BlackOrbDoor)
	}
}