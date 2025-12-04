if IsPlayerOnSameTile() = false
{
	if Register_Registered("DonoraGateAttacked") = true
	{
		Register_Remove("DonoraGateAttacked")
	}
}
else
{
	if global.CurrentDialogue_Asset = Dialog_None and (place_meeting(x,y,Entity_Parent_Projectile_Player) or place_meeting(x,y,Entity_Hitbox_Spell_Wand))
	{
		if global.RemasteredMode = true and Register_Registered("DonoraGateAttacked") = false
		{
			//Temporarily Block Progress// global.CurrentDialogue_Asset = Dialog_PlainOfDonora_10_YalzanTheStern_20Rubies
			//Temporarily Block Progress// global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_YalzanTheStern,global.CurrentDialogue_Asset,500,false)
			//Temporarily Block Progress// Register_Add("DonoraGateAttacked",true)
		}
	}
}