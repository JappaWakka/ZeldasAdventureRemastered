/// @description Create Projectile
if EnemyState != EnemyStates.Attack
{
	var WaterGlob = instance_create_layer(x,y,"ProjectilesParticlesAndItemDrops",Projectile)
	WaterGlob.direction = direction
	EnemyState = EnemyStates.Attack
	
	ResetAlarm = new Alarm(0.75 * FrameRate,ResetEnemyState,false)
}