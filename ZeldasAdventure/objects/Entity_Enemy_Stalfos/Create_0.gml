// Create Event
OriginX = x;
OriginY = y;
direction = choose(global.Directions.North,global.Directions.South,global.Directions.East,global.Directions.West);
speed = 0;
image_speed = 0;

if x >= 19 * tileWidth && x < 19 * tileWidth + tileWidth &&
y >= 25 * tileHeight && y < 25 * tileHeight + tileHeight
{
	TriggerScriptName = "ShrineOfIllusion_StalfosDoors"
}

if x >= 24 * tileWidth && x < 24 * tileWidth + tileWidth &&
y >= 21 * tileHeight && y < 21 * tileHeight + tileHeight
{
	TriggerScriptName = "ShrineOfIllusion_StalfosSpikes"
}