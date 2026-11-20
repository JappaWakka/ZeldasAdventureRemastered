// Create Event
OriginX = x;
OriginY = y;
direction = choose(global.Directions.North,global.Directions.South,global.Directions.East,global.Directions.West);

speed = 0;
image_speed = 0;

Projectile = Entity_Projectile_Enemy_Wizzrobe

ResetAlarm = new Alarm(15,ResetEnemyState,false);

if x >= 20 * tileWidth && x < 20 * tileWidth + tileWidth &&
y >= 23 * tileHeight && y < 23 * tileHeight + tileHeight
{
	TriggerScriptName = "ShrineOfIllusion_CompassIllusion"
}