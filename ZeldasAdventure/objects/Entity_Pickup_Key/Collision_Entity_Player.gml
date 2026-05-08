///Add 1 Key to Inventory
if PathHasEnded = true
{
	if x >= 16 * tileWidth && x < 16 * tileWidth + tileWidth &&
	y >= 10 * tileHeight && y < 10 * tileHeight + tileHeight
	{
		Register_Add("ShrineOfIllusion_KeyMolluska")
	}
	global.CurrentKeys +=1
	instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Particle_Pickup_Disappear)
	instance_destroy();
	audio_play_sound_relative(SFX_Pickup_Item,1000,false);
}