function UseSpell_Any()
{
	//Set sprite, enable animation, spawn melee damage hitbox
	if Facing = global.Directions.East
	{
		instance_create_layer(x,y,"Temporary_AbovePlayer",Entity_Hitbox_Spell_Wand)
		sprite_index = Zelda_Attack_East;
		image_index = 0;
	}
	if Facing = global.Directions.West
	{
		sprite_index = Zelda_Attack_West;
		image_index = 0;
		instance_create_layer(x,y,"Temporary_AbovePlayer",Entity_Hitbox_Spell_Wand)
	}
	if Facing = global.Directions.South
	{
		sprite_index = Zelda_Attack_South;
		image_index = 0;
		instance_create_layer(x,y,"Temporary_AbovePlayer",Entity_Hitbox_Spell_Wand)
	}
	if Facing = global.Directions.North
	{
		sprite_index = Zelda_Attack_North;
		image_index = 0;
		instance_create_layer(x,y,"Temporary_AbovePlayer",Entity_Hitbox_Spell_Wand)
	}
	IsAttacking = true;
	alarm[0] = d(0.25 * FrameRate)
}