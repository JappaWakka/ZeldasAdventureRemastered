if Register_Registered(Registers.Ladder_Placed) = true
{
	visible = true
	if instance_exists(Collision_ShrineOfEarth_02_LadderGap) = true
	{
		instance_deactivate_object(Collision_ShrineOfEarth_02_LadderGap)
	}
}
else
{
	visible = false
	if instance_exists(Collision_ShrineOfEarth_02_LadderGap) = false
	{
		instance_activate_object(Collision_ShrineOfEarth_02_LadderGap)
	}
}