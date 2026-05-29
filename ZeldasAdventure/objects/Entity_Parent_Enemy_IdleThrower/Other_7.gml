image_index = 0
image_speed = 0
if EnemyState = EnemyStates.Idle and alarm[1] = -1
{
	alarm_set(1, round(random_range(2, 9 * FrameRate)));
}