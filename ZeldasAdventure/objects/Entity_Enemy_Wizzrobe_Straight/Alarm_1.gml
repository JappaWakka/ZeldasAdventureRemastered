/// @description Create Projectile
if EnemyState != EnemyStates.Attack
{
	var Shockwave = instance_create_layer(x,y,"ProjectilesParticlesAndItemDrops",Projectile)
	Shockwave.direction = direction
	EnemyState = EnemyStates.Attack
	
	ResetAlarm = new Alarm(0.75 * FrameRate,ResetEnemyState,false)
}