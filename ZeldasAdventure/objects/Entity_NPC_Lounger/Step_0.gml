/// @description Turn Towards Zelda
if IsPlayerOnSameTile() = true
{
	if global.RemasteredMode = true
	{
		if instance_exists(Entity_Collision_Player) = true
		{
			if Entity_Collision_Player.x < x - 72
			{
				sprite_index = Sprite_NPC_Lounger_West
			}
			else if Entity_Collision_Player.x > x + 72
			{
				sprite_index = Sprite_NPC_Lounger_East
			}
			else
			{
				sprite_index = Sprite_NPC_Lounger_South
			}
		}
	}
	else
	{
		sprite_index = Sprite_NPC_Lounger_South
	}
}