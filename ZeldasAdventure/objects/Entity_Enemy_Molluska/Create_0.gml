// Create Event
OriginX = x;
OriginY = y;
direction = choose(global.Directions.North,global.Directions.South,global.Directions.East,global.Directions.West);
speed = 0;
image_speed = 0;

ResetAlarm = new Alarm(15,ResetEnemyState,false);

if x >= 14 * tileWidth && x < 14 * tileWidth + tileWidth &&
y >= 12 * tileHeight && y < 12 * tileHeight + tileHeight
{
	Power = 50
}

if x >= 24 * tileWidth && x < 24 * tileWidth + tileWidth &&
y >= 20 * tileHeight && y < 20 * tileHeight + tileHeight
{
	TriggerScriptName = "ShrineOfIllusion_KeyMolluska"
}