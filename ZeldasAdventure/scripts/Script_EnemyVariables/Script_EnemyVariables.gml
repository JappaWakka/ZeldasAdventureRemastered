global.EnemySpeeds =
{
	Still: 0,
	Slow : 72 * (delta_time / 1000000),
	Medium : 104 * (delta_time / 1000000),
	Fast: 128 * (delta_time / 1000000)
}

global.EnemySound = -1

enum EnemyStates
{
	Idle,
	Move,
	Attack
}
