if global.RemasteredMode = true and global.CurrentDialogue_Asset = Dialog_None and Register_Registered("GlebbAttacked") = false
{
	global.CurrentHealth -= HealthPerHalfHeart * 2
	global.CurrentDialogue_Asset = Dialog_PlainOfAndor_20_GlebbTheThirsty_WhenAttacked
	global.CurrentDialogue_ID = audio_play_sound_relative(global.CurrentDialogue_Asset,500,false)
	Register_Add("GlebbAttacked",true)
}