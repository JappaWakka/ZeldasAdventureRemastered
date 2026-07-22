// Create Event
OriginX = x;
OriginY = y;
direction = choose(global.Directions.North,global.Directions.South,global.Directions.East,global.Directions.West);
speed = 0;
image_speed = 0;
if x >= 16 * tileWidth && x < 16 * tileWidth + tileWidth &&
y >= 9 * tileHeight && y < 9 * tileHeight + tileHeight
{
	sprite_index = Sprite_Enemy_Tektite_Blue
}
if x >= 7 * tileWidth && x < 7 * tileWidth + tileWidth &&
y >= 31 * tileHeight && y < 31 * tileHeight + tileHeight
{
	if Register_Registered("TektiteAmbush") = false
	{
		TriggerScriptName = "TektiteCave_Ambush"
		ReturnToPoint = true
		EnemyState = EnemyStates.Idle
	}
}
if x >= 9 * tileWidth && x < 9 * tileWidth + tileWidth &&
y >= 35 * tileHeight && y < 35 * tileHeight + tileHeight
{
	TriggerScriptName = "ShrineOfEarth_UnderworldMapEarth"
}