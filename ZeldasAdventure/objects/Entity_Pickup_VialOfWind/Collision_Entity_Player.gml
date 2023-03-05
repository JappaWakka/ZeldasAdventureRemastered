///Add EmptyPitcher to Inventory
if PathHasEnded = true
{
	audio_play_sound_relative(SFX_Pickup_Item,100,false)
	Item_Add(Treasure.VialOfWind,0)
	instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Particle_Pickup_Disappear)
	instance_destroy()
}	