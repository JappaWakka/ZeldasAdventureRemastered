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