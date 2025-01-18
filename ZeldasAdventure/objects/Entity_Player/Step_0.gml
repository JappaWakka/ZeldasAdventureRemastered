/// @description Continous Events
x = Entity_Collision_Player.x
y = Entity_Collision_Player.y

if IsMenuVisible() = true
{
	if timeline_index = Timeline_Damage_Player
	{
		timeline_running = false
	}
}
else
{
	if timeline_index = Timeline_Damage_Player
	{
		timeline_running = true
	}
}

#region SpriteChanges & Direction

#region Action - Using Spells & Treasures
if global.CanControlPlayer = true and global.RemasteredMode = false and IsAttacking = false and global.PlayerIsDead = false
{
	if input_check_pressed("action1") = true or input_check_pressed("action2") = true
	{
		if global.CurrentItem[0] = 1
		{
			//Current Item is a Spell
			UseItem_Spell()
		}
		else
		{
			//Current Item is a Treasure
			UseItem_Treasure()
		}
	}
}

if global.CanControlPlayer = true and global.RemasteredMode = true and IsAttacking = false and global.PlayerIsDead = false
{
	if input_check_pressed("action1") = true
	{
		UseItem_Spell()
	}
	if input_check_pressed("action2") = true
	{
		UseItem_Treasure()
	}
}

//Auto-equip Wand if nothing is equipped
if global.RemasteredMode = true
{
	if Item_FindValue(global.CurrentSpell,1) = -1 && Item_FindIndex(Spells.Wand, 1) <> -1
	{
		global.CurrentSpell = Item_FindIndex(Spells.Wand,1);
	}
}
else
{
	if global.CurrentItem[1] = -1 && Item_FindIndex(Spells.Wand, 1) <> -1
	{
		global.CurrentItem = [1,Item_FindIndex(Spells.Wand,1)];
	}
}
if IsAttacking = true
{
	image_speed = 1;
}
#endregion

#endregion

if DamageDelay > 0
{
	DamageDelay -=1
}

if global.PlayerIsDead = true
{
	PlayerDeath_Animation()
}
