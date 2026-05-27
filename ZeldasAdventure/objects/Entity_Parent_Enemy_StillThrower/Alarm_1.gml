/// @description Start Attack
if EnemyState != EnemyStates.Attack
{
	image_speed = 1
	EnemyState = EnemyStates.Attack
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
}