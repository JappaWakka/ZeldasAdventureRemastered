//If the player is on the same tile
if x >= global.CurrentTile.x * tileWidth && x <= global.CurrentTile.x * tileWidth + tileWidth &&
y >= global.CurrentTile.y * tileHeight && y <= global.CurrentTile.y * tileHeight + tileHeight
{
	//Activate
	visible = true;
	Activated = true;
	if alarm_get(0) < 1
	{
		if MoveType = "Bouncing"
		{
			alarm_set(0, 1);
		}
		else if MoveType <> "Still"
		{
			ChangeSpeed = true
			alarm_set(0, random_range(ChangeDelay_Min,ChangeDelay_Max));
		}
	}
	//Play enemy sound
	if alarm_get(1) = -1
	{
		alarm_set(1, random_range(4*room_speed,10*room_speed));
	}
}
else
{
	//Deactivate
	visible = false
	Activated = false;
	x = OriginX;
	y = OriginY;
	image_index = 0;
	direction = 90;
	speed = 0;
	image_speed = 0;
	if EnemySound <> -1
	{
		audio_stop_sound(EnemySound)
	}
}

//Don't move outside of the current tile
if x + 24 >= global.CurrentTile.x * tileWidth + tileWidth && hspeed > 0 or
y + 24 >= global.CurrentTile.y * tileHeight + tileHeight && vspeed > 0 or
x - 24 <= global.CurrentTile.x * tileWidth && hspeed < 0 or
y - 24 <= global.CurrentTile.y * tileHeight && vspeed < 0
{
	if MoveType = "Straight" or MoveType = "Diagonally"
	{
		ChangeDirection = true;
		ChangeSpeed = true;
	}
	else if MoveType = "Bouncing"
	{
		direction += 90;
	}
}


if ChangeSpeed = true
{
	var MoveSpeedsAmount = 0
	if ArrayHas(MoveSpeeds,EnemySpeed_Slow) {MoveSpeedsAmount +=1}
	if ArrayHas(MoveSpeeds,EnemySpeed_Medium) {MoveSpeedsAmount +=1}
	if ArrayHas(MoveSpeeds,EnemySpeed_Fast) {MoveSpeedsAmount +=1}
	switch MoveSpeedsAmount
	{
		case 1 : speed = MoveSpeeds[0];
		break;
		case 2 : speed = choose(MoveSpeeds[0],MoveSpeeds[1]);
		break;
		case 3 : speed = choose(MoveSpeeds[0],MoveSpeeds[1],MoveSpeeds[2]);
		break;
	}
	ChangeSpeed = false
}
if ChangeDirection = true
{
	if MoveType = "Straight"
	{
		direction = choose(90,180,0,270);
		alarm_set(0, random_range(ChangeDelay_Min,ChangeDelay_Max));
	}
	else if MoveType = "Diagonally"
	{
		direction = choose(135,225,45,315);
		alarm_set(0, random_range(ChangeDelay_Min,ChangeDelay_Max));
	}
	else if MoveType = "Bouncing"
	{
		direction +=90
	}
	ChangeDirection = false
}
image_speed = speed