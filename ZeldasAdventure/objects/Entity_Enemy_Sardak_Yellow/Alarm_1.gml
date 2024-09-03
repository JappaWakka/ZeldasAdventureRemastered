/// @description Create Projectile
if EnemyState != EnemyStates.Attack
{
	if global.EnemySoundPlaying = false
	{
		global.EnemySound = [EnemySoundName,x]
	}
	var SardakSpear = instance_create_layer(x,y,"Enemies_BelowForeground",Entity_Projectile_Enemy_Sardak)
	SardakSpear.direction = direction
	SardakSpear.image_angle = direction
	EnemyState = EnemyStates.Attack
	
	ResetAlarm = new Alarm(0.75 * FrameRate,ResetEnemyState,false)
}