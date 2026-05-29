/// @description Pickup
if x >= 16 * tileWidth && x < 16 * tileWidth + tileWidth &&
y >= 10 * tileHeight && y < 10 * tileHeight + tileHeight
{
	Register_Add("CrystalHeart_TreeTrunk")
}
if x >= 5 * tileWidth && x < 5 * tileWidth + tileWidth &&
y >= 9 * tileHeight && y < 9 * tileHeight + tileHeight
{
	Register_Add("CrystalHeart_ForestOfCanvula")
}
IncreaseMaxHealth()
instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Particle_Pickup_Disappear)
instance_destroy();
audio_play_sound_relative(SFX_Pickup_Item,1000,false);