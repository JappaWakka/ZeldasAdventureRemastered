if Triggered = false and AlarmHasBeenSet = false
{
	Entity_TempObject_MirrorHole_Below.visible = true
	global.CanControlPlayer = false
	alarm_set(0,30) //Make Zelda invisible
	alarm_set(1,60) //Start warping
	//Spawn sliding Zelda and deactivate her
	instance_create_layer(19*tileWidth+342,26*tileHeight+35,"NPCs_BelowPlayer",Entity_NPC_ShrineOfIllusion_ZeldaSlide)
	instance_deactivate_object(Entity_NPC_ShrineOfIllusion_ZeldaSlide)
	AlarmHasBeenSet = true
}