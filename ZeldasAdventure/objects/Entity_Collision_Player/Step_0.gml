/// @description Continous Events
#region Movement
var xdir = 0
var ydir = 0

if global.CameraIsPanning = false and Entity_Player.IsAttacking = false
{
	xdir = input_check("right") - input_check("left");
	ydir = input_check("down") - input_check("up");
}
else
{
	xdir = 0
	ydir = 0
}

var MoveDistance = point_distance(0,0,xdir,ydir);
var MoveDirection = point_direction(0,0, xdir, ydir);

// Move the player smoothly and check for colissions
var DiagonalSpeedMultiplier = 1
if xdir != 0 and ydir != 0
{
	DiagonalSpeedMultiplier = 1.41
}
move(Acceleration, MoveDirection, MaxSpeed * DiagonalSpeedMultiplier, MoveDistance);

if xdir != 0 or ydir != 0
{
	Entity_Player.Moving = true
}
else
{
	Entity_Player.Moving = false
}

#endregion

#region SpriteChanges & Direction

Entity_Player.AnimSpeed = d(SpeedMultiplier)
if global.CameraIsPanning = false
{
	if Entity_Player.IsAttacking = false and global.PlayerIsDead = false
	{
		if(input_check("right") = true and input_check("left") = false)
		{
			Entity_Player.image_speed = Entity_Player.AnimSpeed;
			Entity_Player.sprite_index = Zelda_Move_East;
			Entity_Player.Facing = global.Directions.East
		}
		else if(input_check("left") = true and input_check("right") = false)
		{
			Entity_Player.image_speed = Entity_Player.AnimSpeed;
			Entity_Player.sprite_index = Zelda_Move_West;
			Entity_Player.Facing = global.Directions.West
		}
		else if(input_check("down") = true and input_check("up") = false)
		{
			Entity_Player.image_speed = Entity_Player.AnimSpeed;
			Entity_Player.sprite_index = Zelda_Move_South;
			Entity_Player.Facing = global.Directions.South
		}
		else if(input_check("up") = true and input_check("down") = false)
		{
			Entity_Player.image_speed = Entity_Player.AnimSpeed;
			Entity_Player.sprite_index = Zelda_Move_North;
			Entity_Player.Facing = global.Directions.North
		}
		else
		{
			Entity_Player.image_speed = 0;
		}
	}
}
else
{
	if global.PlayerIsDead = false
	{
		Entity_Player.image_speed = 0;
	}
}

#endregion

if place_meeting(x,y,Parent_FadeBeforePan)
{
	global.FadeBeforePan = true
}
else
{
	global.FadeBeforePan = false
}