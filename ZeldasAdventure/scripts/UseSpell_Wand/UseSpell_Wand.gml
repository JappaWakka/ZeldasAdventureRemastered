// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UseSpell_Wand(){
	if global.RemasteredMode = true
	{
		instance_create_layer(x,y,"Temporary_AbovePlayer",Entity_Hitbox_Spell_Wand)
	}
	audio_play_sound_relative(SFX_Use_Wand,600,false)
	global.CanUseSpell = true
}