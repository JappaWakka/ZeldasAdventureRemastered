//Macros
#macro view view_camera[0]
#macro HealthPerHalfHeart 10
#macro CurrentHearts global.CurrentHealth / (HealthPerHalfHeart * 2)
#macro MaxHearts global.MaxHealth / (HealthPerHalfHeart * 2)
#macro HeartsPerRow 7
#macro HeartSeparation 14
#macro tileWidth 384
#macro tileHeight 240
#macro viewWidth 384
#macro viewHeight 240
#macro EnemySpeed_Still 0
#macro EnemySpeed_Slow 1
#macro EnemySpeed_Medium 1.4
#macro EnemySpeed_Fast 1.8

enum EnemySpeeds
{
	Still,
	Slow,
	Medium,
	Fast
}

enum EnemyMoveTypes
{
	Still,
	Rotating,
	Straight,
	Diagonally,
	Bouncing
}
