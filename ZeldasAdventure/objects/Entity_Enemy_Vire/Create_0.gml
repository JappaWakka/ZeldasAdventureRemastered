// Create Event
OriginX = x;
OriginY = y;
direction = choose(global.Directions.North,global.Directions.South,global.Directions.East,global.Directions.West);
speed = 0;
image_speed = 0;

if x >= 18 * tileWidth && x < 18 * tileWidth + tileWidth &&
y >= 26 * tileHeight && y < 26 * tileHeight + tileHeight
{
	TriggerScriptName = "ShrineOfIllusion_KeyVire"
}