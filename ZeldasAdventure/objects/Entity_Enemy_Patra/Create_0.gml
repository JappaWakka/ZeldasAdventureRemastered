// Create Event
OriginX = x;
OriginY = y;
direction = choose(global.Directions.North,global.Directions.South,global.Directions.East,global.Directions.West);
speed = 0;
image_speed = 0;

if x >= 20 * tileWidth && x < 20 * tileWidth + tileWidth &&
y >= 21 * tileHeight && y < 21 * tileHeight + tileHeight
{
	TriggerScriptName = "ShrineOfIllusion_BlackOrb"
}