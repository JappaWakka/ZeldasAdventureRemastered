// Create Event
OriginX = x;
OriginY = y;
speed = global.EnemySpeeds.Still;
image_speed = 0;
ReturnToPoint = true
EnemyState = EnemyStates.Idle

if x >= 9 * tileWidth && x <= 9 * tileWidth + tileWidth &&
y >= 35 * tileHeight && y <= 35 * tileHeight + tileHeight
{
	TriggerScriptName = "UnderworldMapEarthTreasure"
}