/// @description Turn Towards Zelda
if IsPlayerOnSameTile() = true
{
	if global.RemasteredMode = true
	{
		if instance_exists(Entity_Collision_Player) = true
		{
			if Entity_Collision_Player.x < x - 72
			{
				sprite_index = Sprite_NPC_Lonlyn_West
			}
			else if Entity_Collision_Player.x > x + 72
			{
				sprite_index = Sprite_NPC_Lonlyn_East
			}
			else
			{
				sprite_index = Sprite_NPC_Lonlyn_South
			}
		}
	}
	else
	{
		sprite_index = Sprite_NPC_Lonlyn_South
	}
}
else
{
	if global.RemasteredMode = false
	{
		if Register_Registered(Registers.Lonlyn_Greetings) = true and Register_Registered(Registers.Lonlyn_HasGivenMoney) = true
		{
			instance_destroy()
		}
	}
	else
	{
		if Register_Registered(Registers.Lonlyn_CannotHelpYou) = true
		{
			instance_destroy()
		}
	}
}