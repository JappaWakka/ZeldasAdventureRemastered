if x >= 16 * tileWidth && x < 16 * tileWidth + tileWidth &&
y >= 10 * tileHeight && y < 10 * tileHeight + tileHeight
{
	if Register_Registered("CrystalHeart_TreeTrunk") = true
	{
		instance_destroy()
	}
}