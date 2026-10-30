///Add 1 Key to Inventory
if PathHasEnded = true
{
	if x >= 18 * tileWidth && x < 18 * tileWidth + tileWidth &&
	y >= 26 * tileHeight && y < 26 * tileHeight + tileHeight
	{
		Register_Add(Registers.Key_Vire)
	}
	if x >= 16 * tileWidth && x < 16 * tileWidth + tileWidth &&
	y >= 10 * tileHeight && y < 10 * tileHeight + tileHeight
	{
		Register_Add(Registers.Key_Molluska)
	}
	global.CurrentKeys +=1
	instance_create_layer(x,y,"ProjectilesParticlesAndItemDrops",Entity_Particle_Pickup_Disappear)
	instance_destroy();
	audio_play_sound_relative(SFX_Pickup_Item,1000,false);
}