///Add Wand to Inventory
audio_play_sound(SFX_Pickup_Item,false,false)
Add_Item(Spells.Wand,1)

//Auto-equip Wand if nothing is equipped
if global.RemasteredMode = true
{
	if global.CurrentSpell = -1
	{
		global.CurrentSpell = Spells.Wand;
	}
}
else
{
	if global.CurrentItem[1] = -1
	{
		global.CurrentItem = [1,Spells.Wand];
	}
}
	
instance_destroy()