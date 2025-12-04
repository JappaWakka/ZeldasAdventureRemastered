// Create Event
OriginX = x;
OriginY = y;
direction = choose(global.Directions.North,global.Directions.South,global.Directions.East,global.Directions.West);

speed = 0;
image_speed = 0;

Projectile = Entity_Projectile_Enemy_Bounder_Bright

if x >= 15 * tileWidth && x < 15 * tileWidth + tileWidth &&
y >= 13 * tileHeight && y < 13 * tileHeight + tileHeight
{
	Power = 40
	Projectile = Entity_Projectile_Enemy_Bounder_Dark
}
ResetAlarm = new Alarm(15,ResetEnemyState,false);