function Script_AggroRange()
{
	if IsMenuVisible() = false && global.CameraIsFading = false
	{
		if Entity_Player.x < self.x
		{
			if self.x - Entity_Player.x <= 100
			{
				if Entity_Player.y < self.y
				{
					if self.y - Entity_Player.y <= 60
					{
						ChangeDelay_Min = 0.5 * FrameRate
						ChangeDelay_Max = 1 * FrameRate
						return true;
					}
				}
				else
				{
					if Entity_Player.y - self.y <= 60
					{
						ChangeDelay_Min = 0.5 * FrameRate
						ChangeDelay_Max = 1 * FrameRate
						return true;
					}
				}
			}
		}
		else
		{
			if Entity_Player.x - self.x <= 100
			{
				if Entity_Player.y < self.y
				{
					if self.y - Entity_Player.y <= 60
					{
						ChangeDelay_Min = 0.5 * FrameRate
						ChangeDelay_Max = 1 * FrameRate
						return true;
					}
				}
				else
				{
					if Entity_Player.y - self.y <= 60
					{
						ChangeDelay_Min = 0.5 * FrameRate
						ChangeDelay_Max = 1 * FrameRate
						return true;
					}
				}
			}
		}
	}
	ChangeDelay_Min = 1 * FrameRate
	ChangeDelay_Max = 2 * FrameRate
	return false;
}

function EnemyChangeDirection_Straight()
{
	if Script_AggroRange() = true
	{
		if round(random_range(0,100)) <= MoveToPlayerChance
		{
			var _direction
			if Entity_Player.x < self.x
			{
				if Entity_Player.y < self.y
				{
					_direction = choose(global.Directions.West,global.Directions.North);
				}
				else
				{
					_direction = choose(global.Directions.West,global.Directions.South);
				}
			}
			else
			{
				if Entity_Player.y < self.y
				{
					_direction = choose(global.Directions.East,global.Directions.North);
				}
				else
				{
					_direction = choose(global.Directions.East,global.Directions.South);
				}
			}
			var _startdirection = direction
			
			var x_target = x+lengthdir_x(speed * 2, _direction);
			var y_target = y+lengthdir_y(speed * 2, _direction);
					
			var FreeToMove = false
			var _otherdirection = _direction
			
			if place_meeting(x_target, y_target, Parent_Solid) = false and place_meeting(x_target, y_target, Parent_UseItem_RedBoots) = false and place_meeting(x_target, y_target, Parent_ProjectilesCanPass) = false
			{
				FreeToMove = true
			}
			else
			{
				while FreeToMove = false and _otherdirection != _startdirection
				{					
					x_target = x+lengthdir_x(speed * 2, _otherdirection);
					y_target = y+lengthdir_y(speed * 2, _otherdirection);
					if place_meeting(x_target, y_target, Parent_Solid) = false and place_meeting(x_target, y_target, Parent_UseItem_RedBoots) = false and place_meeting(x_target, y_target, Parent_ProjectilesCanPass) = false
					{
						_direction = _otherdirection
						FreeToMove = true
					}
					else
					{
						_otherdirection += 90
						if _otherdirection >=360
						{
							_otherdirection = 0
						}
					}
				}
			}
			direction = _direction
		}
	}
	else
	{
		var _startdirection = direction
		var _direction = choose(global.Directions.North,global.Directions.West,global.Directions.East,global.Directions.South);
		var x_target = x+lengthdir_x(speed * 2, _direction);
		var y_target = y+lengthdir_y(speed * 2, _direction);
		
		var FreeToMove = false
		var _otherdirection = _direction
		
		if place_meeting(x_target, y_target, Parent_Solid) = false and place_meeting(x_target, y_target, Parent_UseItem_RedBoots) = false and place_meeting(x_target, y_target, Parent_ProjectilesCanPass) = false
		{
			FreeToMove = true
		}
		else
		{
			while FreeToMove = false and _otherdirection != _startdirection
			{					
				x_target = x+lengthdir_x(speed * 2, _otherdirection);
				y_target = y+lengthdir_y(speed * 2, _otherdirection);
				if place_meeting(x_target, y_target, Parent_Solid) = false and place_meeting(x_target, y_target, Parent_UseItem_RedBoots) = false and place_meeting(x_target, y_target, Parent_ProjectilesCanPass) = false
				{
					_direction = _otherdirection
					FreeToMove = true
				}
				else
				{
					_otherdirection += 90
					if _otherdirection >=360
					{
						_otherdirection = 0
					}
				}
			}
		}
		direction = _direction
	}
}