function UseSpell_Firestorm()
{
	var Fireball_North = instance_create_layer(x,y-16,"Temporary_AbovePlayer",Entity_Projectile_Player_Firestorm)
	Fireball_North.direction = global.Directions.North
	var Fireball_West = instance_create_layer(x-16,y,"Temporary_AbovePlayer",Entity_Projectile_Player_Firestorm)
	Fireball_West.direction = global.Directions.West
	var Fireball_East = instance_create_layer(x+16,y,"Temporary_AbovePlayer",Entity_Projectile_Player_Firestorm)
	Fireball_East.direction = global.Directions.East
	var Fireball_South = instance_create_layer(x,y+16,"Temporary_AbovePlayer",Entity_Projectile_Player_Firestorm)
	Fireball_South.direction = global.Directions.South
	audio_play_sound_relative(SFX_Use_Firestorm,600,false)
	
	CanUseSpell = false
	alarm[0] = 0.75 * room_speed
	
}