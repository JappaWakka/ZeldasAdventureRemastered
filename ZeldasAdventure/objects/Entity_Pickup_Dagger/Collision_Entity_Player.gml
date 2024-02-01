///Add Dagger to Inventory
if PathHasEnded = true
{
	audio_play_sound_relative(SFX_Pickup_Item,100,false)
	Item_Add(Spells.Dagger,1)
	
	instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Particle_Pickup_Disappear)
	instance_destroy()
}