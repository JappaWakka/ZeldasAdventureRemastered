//If the player is on the same tile
if IsPlayerOnSameTile() = true
{
	//Activate
	visible = true;
	speed = ProjectileSpeed
	image_speed = 1
}
else
{
	instance_destroy()
}


//Don't move outside of the current tile
if x + 16 >= global.CurrentTile.x * tileWidth + tileWidth && hspeed > 0 or
y + 16 >= global.CurrentTile.y * tileHeight + tileHeight && vspeed > 0 or
x - 16 <= global.CurrentTile.x * tileWidth && hspeed < 0 or
y - 16 <= global.CurrentTile.y * tileHeight && vspeed < 0
{
	instance_destroy()
}
if timeline_position > timeline_max_moment(timeline_index)
{
	timeline_running = false
}

if instance_number(Entity_Projectile_Player_RingsOfFire) = 0 and timeline_running = false
{
	instance_destroy()
}