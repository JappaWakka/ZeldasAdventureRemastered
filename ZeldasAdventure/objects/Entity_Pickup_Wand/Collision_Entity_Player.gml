///Add Wand to Inventory
audio_play_sound(SFX_Pickup_Item,false,false)
global.Inventory_Spell[Spell.Wand] = true

//Auto-equip Wand if nothing is equipped
if global.CurrentSpell = -1
{
	global.CurrentSpell = Spell.Wand;
}
	
instance_destroy()