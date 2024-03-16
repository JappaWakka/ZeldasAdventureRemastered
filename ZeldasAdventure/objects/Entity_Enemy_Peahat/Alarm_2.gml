/// @description Create Projectile
if EnemyState != EnemyStates.Attack
{
	instance_create_layer(x,y,"Enemies",Entity_Projectile_Enemy_Peahat)
	EnemyState = EnemyStates.Attack
	
	ResetAlarm = new Alarm(0.75 * FrameRate,ResetEnemyState,false)
}