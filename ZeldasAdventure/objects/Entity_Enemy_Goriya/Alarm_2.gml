/// @description Create Projectile
if EnemyState != EnemyStates.Attack
{
	var Boomerang = instance_create_layer(x,y,"Enemies",Entity_Projectile_Enemy_Goriya)
	Boomerang.direction = direction
	EnemyState = EnemyStates.Attack
	
	ResetAlarm = new Alarm(0.75 * FrameRate,ResetEnemyState,false)
}