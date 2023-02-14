///Add EmptyPitcher to Inventory
if PathHasEnded = true
{
	audio_play_sound_relative(SFX_Pickup_Item,100,false)
	Item_Add(Treasure.EmptyPitcher,0)
	
	instance_destroy()
}	