// Create Event
OriginX = x;
OriginY = y;
speed = global.EnemySpeeds.Still;
image_speed = 0;
EnemyState = EnemyStates.Idle
if Register_Registered("LlortDefeated") = true
{
	instance_destroy()
}
else
{
	BossAI_SetPattern(BossIndexes.Llort1)
}