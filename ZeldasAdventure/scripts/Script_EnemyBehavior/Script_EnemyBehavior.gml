function Script_AggroRange()
{
	if Entity_Player.x < self.x
	{
		if self.x - Entity_Player.x <= 120
		{
			if Entity_Player.y < self.y
			{
				if self.y - Entity_Player.y <= 80
				{
					return true;
				}
			}
			else
			{
				if Entity_Player.y - self.y <= 80
				{
					return true;
				}
			}
		}
	}
	else
	{
		if Entity_Player.x - self.x <= 120
		{
			if Entity_Player.y < self.y
			{
				if self.y - Entity_Player.y <= 80
				{
					return true;
				}
			}
			else
			{
				if Entity_Player.y - self.y <= 80
				{
					return true;
				}
			}
		}
	}
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
			
			var x_target = x+lengthdir_x(speed * 1.5, _direction);
			var y_target = y+lengthdir_y(speed * 1.5, _direction);
			
			var FreeToMove = false
			if place_meeting(x_target, y_target, Parent_Solid) = false and place_meeting(x_target, y_target, Parent_UseItem_RedBoots) = false
			{
				FreeToMove = true
			}
			
			while FreeToMove = false and _direction != _startdirection
			{	
				if place_meeting(x_target, y_target, Parent_Solid) = false and place_meeting(x_target, y_target, Parent_UseItem_RedBoots) = false
				{
					FreeToMove = true
				}
				else
				{
					_direction += 90
					if _direction >=360
					{
						_direction = 0
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
		var x_target = x+lengthdir_x(speed * 1.5, _direction);
		var y_target = y+lengthdir_y(speed * 1.5, _direction);
		
		var FreeToMove = false
		if place_meeting(x_target, y_target, Parent_Solid) = false and place_meeting(x_target, y_target, Parent_UseItem_RedBoots) = false
		{
			FreeToMove = true
		}
		
		while FreeToMove = false and _direction != _startdirection
		{	
			if place_meeting(x_target, y_target, Parent_Solid) = false and place_meeting(x_target, y_target, Parent_UseItem_RedBoots) = false
			{
				FreeToMove = true
			}
			else
			{
				_direction += 90
				if _direction >=360
				{
					_direction = 0
				}
			}
		}
		direction = _direction
	}
}