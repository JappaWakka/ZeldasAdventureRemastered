if IsPlayerOnSameTile = false
{
	if Register_Registered("Enid_Done") = true
	{
		instance_destroy()
	}
}
else
{
	if global.CurrentDialogue_Asset = Dialog_None and place_meeting(x,y,Entity_Player) and Register_Registered("Enid_Done") = false
	{
		if global.RemasteredMode = false or Register_Registered("Enid_HitWithSpell") = false
		{
			global.CurrentHealth -= HealthPerHalfHeart * 2
			global.CurrentDialogue_Asset = Dialog_ForestOfOgham_14_Enid_TrustNoOneWithHair
			global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Enid, global.CurrentDialogue_Asset,500,false)
			Register_Add("Enid_Done")
		}
		else
		{
			global.CurrentDialogue_Asset = Dialog_ForestOfOgham_14_Enid_GoAway
			global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Enid, global.CurrentDialogue_Asset,500,false)
			Register_Add("Enid_Done")
		}
	}
	if global.CurrentDialogue_Asset = Dialog_None and place_meeting(x,y,Entity_Parent_Projectile_Player)
	{
		if global.RemasteredMode = true and Register_Registered("Enid_HitWithSpell") = false
		{
			global.CurrentDialogue_Asset = Dialog_ForestOfOgham_14_Enid_TooClever
			global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Enid, global.CurrentDialogue_Asset,500,false)
			Register_Add("Enid_HitWithSpell")
		}
	}
}