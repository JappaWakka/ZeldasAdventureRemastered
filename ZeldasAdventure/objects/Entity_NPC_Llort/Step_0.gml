if IsPlayerOnSameTile() = true
{
	if Register_Registered("Llort_ShrineOfRock") = true
	{
		if global.CurrentDialogue_Asset != Dialog_None
		{
			global.CanControlPlayer = false;
		}
		else
		{
			global.CanControlPlayer = true;
			instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Particle_Pickup_Disappear)
			instance_destroy();
		}
	}
}
else
{
	if Register_Registered("Llort_Defeated") = true
	{
		instance_destroy()
	}
}
