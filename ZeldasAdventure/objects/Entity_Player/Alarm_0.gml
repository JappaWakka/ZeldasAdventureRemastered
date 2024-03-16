/// @description Reset sprite after attack animation
if sprite_index = Zelda_Attack_East
{
	sprite_index = Zelda_Move_East;
	IsAttacking = false;
}
if sprite_index = Zelda_Attack_West
{
	sprite_index = Zelda_Move_West;
	IsAttacking = false;
}
if sprite_index = Zelda_Attack_South
{
	sprite_index = Zelda_Move_South;
	IsAttacking = false;
}
if sprite_index = Zelda_Attack_North
{
	sprite_index = Zelda_Move_North;
	IsAttacking = false;
}