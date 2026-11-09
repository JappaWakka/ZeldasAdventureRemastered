// Create Event
OriginX = x;
OriginY = y;
direction = choose(global.Directions.North,global.Directions.South,global.Directions.East,global.Directions.West);
speed = 0;
image_speed = 0;

if x >= 19 * tileWidth && x < 19 * tileWidth + tileWidth &&
y >= 24 * tileHeight && y < 24 * tileHeight + tileHeight
{
	TriggerScriptName = "ShrineOfIllusion_PolsVoiceDoors"
}