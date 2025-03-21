//If the player is on the same tile
if IsPlayerOnSameTile() = true
{
	if global.CameraIsFading = false
	{
		//Activate
		visible = true;
		speed = ProjectileSpeed
		image_speed = 1
	}
	else
	{
		//Activate
		visible = false;
		speed = 0
		image_speed = 0
	}
}
else
{
	instance_destroy()
}


//Don't move outside of the current tile
if x + abs(hspeed) * 3 >= global.CurrentTile.x * tileWidth + tileWidth && hspeed > 0 or
y + abs(vspeed) * 3 >= global.CurrentTile.y * tileHeight + tileHeight && vspeed > 0 or
x - abs(hspeed) * 3 <= global.CurrentTile.x * tileWidth && hspeed < 0 or
y - abs(vspeed) * 3 <= global.CurrentTile.y * tileHeight && vspeed < 0
{
	instance_destroy()
}
