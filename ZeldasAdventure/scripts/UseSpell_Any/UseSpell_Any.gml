function UseSpell_Any()
{
	//Set sprite, enable animation, spawn melee damage hitbox
	if Facing = global.Directions.East
	{
		instance_create_layer(x,y,"Temporary_AbovePlayer",Entity_Hitbox_Spell_Wand)
		sprite_index = Zelda_Attack_East;
	}
	if Facing = global.Directions.West
	{
		sprite_index = Zelda_Attack_West;
		instance_create_layer(x,y,"Temporary_AbovePlayer",Entity_Hitbox_Spell_Wand)
	}
	if Facing = global.Directions.South
	{
		sprite_index = Zelda_Attack_South;
		instance_create_layer(x,y,"Temporary_AbovePlayer",Entity_Hitbox_Spell_Wand)
	}
	if Facing = global.Directions.North
	{
		sprite_index = Zelda_Attack_North;
		instance_create_layer(x,y,"Temporary_AbovePlayer",Entity_Hitbox_Spell_Wand)
	}
	IsAttacking = true;
}