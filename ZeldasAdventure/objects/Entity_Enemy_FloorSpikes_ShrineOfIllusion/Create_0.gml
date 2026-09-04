// Create Event
OriginX = x;
OriginY = y;
direction = global.Directions.South;
speed = 0;
image_speed = 0;

if Item_FindIndex(CelestialSigns.Earth,2) <> -1 
{
	instance_destroy()
}