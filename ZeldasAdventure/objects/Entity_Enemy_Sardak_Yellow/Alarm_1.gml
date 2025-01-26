/// @description Create Projectile
if EnemyState != EnemyStates.Attack
{
	if global.EnemySoundPlaying = false
	{
		if global.EnemySound[0] != -1 and global.EnemySound[1] != -1
		{
			global.EnemySound = [EnemySoundName,x]
		}
		else
		{
			if irandom_range(0,100) <= 50
			{
				global.EnemySound = [EnemySoundName,x]
			}
		}
	}
	var SardakSpear = instance_create_layer(x,y,"Enemies_BelowForeground",Entity_Projectile_Enemy_Sardak)
	SardakSpear.direction = direction
	SardakSpear.image_angle = direction
	EnemyState = EnemyStates.Attack
	
	ResetAlarm = new Alarm(0.75 * FrameRate,ResetEnemyState,false)
}