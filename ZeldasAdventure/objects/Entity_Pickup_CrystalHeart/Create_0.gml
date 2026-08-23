if x >= 16 * tileWidth && x < 16 * tileWidth + tileWidth &&
y >= 10 * tileHeight && y < 10 * tileHeight + tileHeight
{
	if Register_Registered(Registers.CrystalHeart_TreeTrunkCave) = true
	{
		instance_destroy()
	}
}
if x >= 5 * tileWidth && x < 5 * tileWidth + tileWidth &&
y >= 9 * tileHeight && y < 9 * tileHeight + tileHeight
{
	if Register_Registered(Registers.CrystalHeart_ForestOfCanvula) = true
	{
		instance_destroy()
	}
}