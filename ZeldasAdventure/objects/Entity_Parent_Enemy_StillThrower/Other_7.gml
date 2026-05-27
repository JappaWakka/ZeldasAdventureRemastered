/// @description Wait until next attack
image_index = 0
image_speed = 0
EnemyState = EnemyStates.Still
if EnemyState != EnemyStates.Damaged
{
	alarm_set(1, round(random_range(2, 9 * FrameRate)));
}
