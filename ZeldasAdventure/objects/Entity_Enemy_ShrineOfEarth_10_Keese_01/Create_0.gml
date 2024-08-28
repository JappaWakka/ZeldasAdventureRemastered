// Create Event
OriginX = x;
OriginY = y;
speed = global.EnemySpeeds.Still;
image_speed = 0;
ReturnToPoint = true
EnemyState = EnemyStates.Idle
HasStarted = false

EnemyPath_ShrineOfEarth_10_Keese_01()

alarm_set(0, random_range(StartDelayMin,StartDelayMax));
