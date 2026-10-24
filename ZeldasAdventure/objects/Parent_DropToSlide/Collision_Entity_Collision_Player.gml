if Triggered = false
{
	//Start warping
	Audio_StopMusic()
	global.MusicPaused = true
	global.FadeProgress = 3;
	global.CanControlPlayer = false
	Triggered = true;
	alarm_set(0,30) //Make Zelda invisible
	//Spawn sliding Zelda and deactivate her
	instance_create_layer(19*tileWidth+342,26*tileHeight+35,"NPCs_BelowPlayer",Entity_NPC_ShrineOfIllusion_ZeldaSlide)
	instance_deactivate_object(Entity_NPC_ShrineOfIllusion_ZeldaSlide)
}