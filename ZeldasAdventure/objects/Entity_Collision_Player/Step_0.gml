/// @description Continous Events
#region Movement
var xdir = 0
var ydir = 0

if global.CanControlPlayer = true and global.CameraIsPanning = false and Entity_Player.IsAttacking = false and IsMenuVisible() = false and global.FadeProgress = 2
{
	xdir = input_check("right") - input_check("left");
	if xdir = 0
	{
		xdir = input_check("joyright") - input_check("joyleft");
	}
	ydir = input_check("down") - input_check("up");
	if ydir = 0
	{
		ydir = input_check("joydown") - input_check("joyup");
	}
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
if global.RemasteredMode = true and global.CurrentTreasure = Treasures.GoldenBoots
{
	SpeedMultiplier = 1.5
}
else
{
	SpeedMultiplier = 1
}
move(Acceleration, MoveDirection, MaxSpeed * SpeedMultiplier * DiagonalSpeedMultiplier * DebugSpeedMultiplier, MoveDistance);

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
if global.CanControlPlayer = true and global.CameraIsPanning = false and IsMenuVisible() = false and global.FadeProgress = 2
{
	if Entity_Player.IsAttacking = false and global.PlayerIsDead = false
	{
		if(input_check("right") = true and input_check("left") = false) or (input_check("joyright") = true and input_check("joyleft") = false)
		{
			Entity_Player.image_speed = Entity_Player.AnimSpeed;
			Entity_Player.sprite_index = Zelda_Move_East;
			Entity_Player.Facing = global.Directions.East
		}
		else if(input_check("left") = true and input_check("right") = false) or (input_check("joyleft") = true and input_check("joyright") = false)
		{
			Entity_Player.image_speed = Entity_Player.AnimSpeed;
			Entity_Player.sprite_index = Zelda_Move_West;
			Entity_Player.Facing = global.Directions.West
		}
		else if(input_check("down") = true and input_check("up") = false) or (input_check("joydown") = true and input_check("joyup") = false)
		{
			Entity_Player.image_speed = Entity_Player.AnimSpeed;
			Entity_Player.sprite_index = Zelda_Move_South;
			Entity_Player.Facing = global.Directions.South
		}
		else if(input_check("up") = true and input_check("down") = false) or (input_check("joyup") = true and input_check("joydown") = false)
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
