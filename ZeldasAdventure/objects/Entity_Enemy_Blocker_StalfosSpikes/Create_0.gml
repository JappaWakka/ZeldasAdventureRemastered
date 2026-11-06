// Create Event
OriginX = x;
OriginY = y;
direction = global.Directions.South;
speed = 0;
image_speed = 0;

CanDealDamage = true
if Register_Registered(Registers.Door_Stalfos_19) = true
{
	visible = false
	CanDealDamage = false
	if instance_exists(Collision_ShrineOfIllusion_19_StalfosSpikes) = true
	{
		instance_deactivate_object(Collision_ShrineOfIllusion_19_StalfosSpikes)
	}
}
else
{
	visible = true
	if instance_exists(Collision_ShrineOfIllusion_19_StalfosSpikes) = false
	{
		instance_activate_object(Collision_ShrineOfIllusion_19_StalfosSpikes)
	}
}