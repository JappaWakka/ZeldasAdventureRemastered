#macro PlayerBaseSpeed 1.5
global.EnemySpeeds =
{
	Still: 0,
	Slow : 1,
	Medium : 1.4,
	Fast: 1.8
};

global.EnemySound = -1;

enum EnemyStates
{
	Idle,
	Move,
	Attack,
	Damaged
};

global.Directions =
{
	North : 90,
	West : 180,
	South : 270,
	East : 0
}