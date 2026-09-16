/// @description Turn Towards Zelda
if IsPlayerOnSameTile() = true
{
	if global.RemasteredMode = true
	{
		if instance_exists(Entity_Collision_Player) = true
		{
			if Entity_Collision_Player.x < x - 72
			{
				sprite_index = Sprite_NPC_Gwynla_West
			}
			else if Entity_Collision_Player.x > x + 72
			{
				sprite_index = Sprite_NPC_Gwynla_East
			}
			else
			{
				sprite_index = Sprite_NPC_Gwynla_South
			}
		}
	}
	else
	{
		sprite_index = Sprite_NPC_Gwynla_South
	}
}
else
{
	if Register_Registered(Registers.Gwynla_YouLookTiredMyLady) = true and Item_FindIndex(Spells.Noise,1) <> -1
	{
		instance_destroy()
	}
}