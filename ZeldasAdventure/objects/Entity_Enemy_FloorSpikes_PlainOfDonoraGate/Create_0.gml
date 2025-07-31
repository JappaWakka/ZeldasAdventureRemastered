// Create Event
OriginX = x;
OriginY = y;
direction = global.Directions.South;
speed = 0;
image_speed = 0;

if x >= 16 * tileWidth && x < 16 * tileWidth + tileWidth &&
y >= 14 * tileHeight && y < 14 * tileHeight + tileHeight
{
	Power = 40
	Defense = 999
}

if x >= 10 * tileWidth && x < 10 * tileWidth + tileWidth &&
y >= 18 * tileHeight && y < 18 * tileHeight + tileHeight
{
	Power = 20
	Defense = 999
}