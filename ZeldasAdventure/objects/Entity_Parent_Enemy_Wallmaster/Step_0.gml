//If the player is on the same tile
if IsPlayerOnSameTile_EnemyOrNPC() = true
{
	if global.CameraIsFading = false and IsMenuVisible() = false
	{
		if alarm[1] = -1
		{
			alarm_set(1, round(random_range(2 * FrameRate,3.5 * FrameRate)))
		}
		
		//Send Player back to the start (slide or entrance)
		if collision_circle(x,y,HitRadius_Attack,Entity_Player,true,true) and CanGrab = true and global.CanControlPlayer = true
		{
			if Triggered = false
			{
				//Start warping
				Audio_StopMusic()
				global.MusicPaused = true
				global.FadeProgress = 3;
				global.CanControlPlayer = false
				 //Make Zelda invisible
				if instance_exists(Entity_Player) = true
				{
					Entity_Player.visible = false
				}
				//Spawn sliding Zelda and deactivate her
				instance_create_layer(19*tileWidth+342,26*tileHeight+35,"NPCs_BelowPlayer",Entity_NPC_ShrineOfIllusion_ZeldaSlide)
				instance_deactivate_object(Entity_NPC_ShrineOfIllusion_ZeldaSlide)
				Triggered = true;
			}
		}
	}	
}
else
{
	//Deactivate
	visible = false
	if IsMenuVisible() = false
	{
		CanContinue = false;
		FrameIndex = 0;
		x = OriginX;
		y = OriginY;
		image_index = 0;
		direction = 90;
	}
	speed = global.EnemySpeeds.Still;
	image_speed = 0;
}

if Triggered = true
{
	if Register_Registered(Registers.Pasquinade_Defeated) = true
	{
		WarpToLocation("Spawn_ShrineOfIllusion");
	}
	else
	{
		WarpToLocation("ShrineOfIllusion_SlideRoom");
	}
	
	if global.FadeProgress = 2
	{
		//control is given back to the player after the slide animation ended (in the Entity_Player_Slide object)
		global.MusicPaused = false
		global.SwitchTracks = true
		Triggered = false
	}
}