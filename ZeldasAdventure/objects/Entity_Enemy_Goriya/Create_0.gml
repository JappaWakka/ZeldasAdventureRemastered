// Create Event
OriginX = x;
OriginY = y;
direction = choose(global.Directions.North,global.Directions.South,global.Directions.East,global.Directions.West);

speed = 0;
image_speed = 0;

if x >= 3 * tileWidth && x < 3 * tileWidth + tileWidth &&
y >= 23 * tileHeight && y < 23 * tileHeight + tileHeight
{
	TriggerScriptName = "PlainOfAndor_Boomerang"
}

if x >= 22 * tileWidth && x < 22 * tileWidth + tileWidth &&
y >= 21 * tileHeight && y < 21 * tileHeight + tileHeight
{
	TriggerScriptName = "ShrineOfIllusion_Knife"
}

ResetAlarm = new Alarm(15,ResetEnemyState,false);