// Create Event
OriginX = x;
OriginY = y;
direction = 270;
speed = 0;
image_speed = 0;

if x >= 3 * tileWidth && x <= 3 * tileWidth + tileWidth &&
y >= 23 * tileHeight && y <= 23 * tileHeight + tileHeight
{
	TriggerScriptName = "BoomerangSpell"
}
ResetAlarm = new Alarm(15,ResetEnemyState,false);