///Add Wand to Inventory
audio_play_sound(SFX_Pickup_Item,false,false)
array_push(global.Inventory,Spell.Wand)

//Auto-equip Wand if nothing is equipped
if global.CurrentSpell = Spell.Nothing
	{
		global.CurrentSpell = Spell.Wand;
	}
	
instance_destroy()