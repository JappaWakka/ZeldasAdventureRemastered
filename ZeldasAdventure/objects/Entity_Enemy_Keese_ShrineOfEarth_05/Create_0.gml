// Create Event
OriginX = x;
OriginY = y;
speed = global.EnemySpeeds.Still;
image_speed = 0;
ReturnToPoint = true
EnemyState = EnemyStates.Idle

if OriginX = 3712 and OriginY = 8676
{
	EnemyPath_ShrineOfEarth_05_Keese_01()
}
if OriginX = 3496 and OriginY = 8676
{
	EnemyPath_ShrineOfEarth_05_Keese_02()
}
if OriginX = 3672 and OriginY = 8776
{
	EnemyPath_ShrineOfEarth_05_Keese_03()
}

if x >= 9 * tileWidth && x <= 9 * tileWidth + tileWidth &&
y >= 36 * tileHeight && y <= 36 * tileHeight + tileHeight
{
	TriggerScriptName = "CompassEarthTreasure"
}