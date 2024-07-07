if global.RemasteredMode = true and global.CurrentDialogue_Asset = Dialog_None and Register_Registered("BeggarWomanAttacked") = false
{
	sprite_index = Sprite_NPC_BeggarWoman_Angry
	EnableAnimationAlarm = false
	Animating = true
	global.CurrentDialogue_Asset = Dialog_PlainOfAndor_13_BeggarWoman_Charity
	global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
	Register_Add("BeggarWomanAttacked",true)
}