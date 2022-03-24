/// @description Skip Cutscene
if room = Room_Cutscene_Logos
{
	VideoManager_Stop()
	room_goto(Room_Cutscene_Intro)
}
else if room = Room_Cutscene_Intro
{
	VideoManager_Stop()
	room_goto_next()
}