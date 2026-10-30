if Triggered = false and CanTrigger = true
{
	//Start warping
	Audio_StopMusic()
	global.MusicPaused = true
	global.FadeProgress = 3;
	global.CanControlPlayer = false
	Triggered = true;
	 //Make Zelda invisible
	if instance_exists(Entity_Player) = true
	{
		Entity_Player.visible = false
	}
	//Spawn sliding Zelda and deactivate her
	instance_create_layer(19*tileWidth+342,26*tileHeight+35,"NPCs_BelowPlayer",Entity_NPC_ShrineOfIllusion_ZeldaSlide)
	instance_deactivate_object(Entity_NPC_ShrineOfIllusion_ZeldaSlide)
}