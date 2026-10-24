if Triggered = true
{
	WarpToLocation("ShrineOfIllusion_SlideRoom");
}
if global.FadeProgress = 2
{
	//control is given back to the player after the slide animation ended (in the Entity_Player_Slide object)
	global.MusicPaused = false
	global.SwitchTracks = true
	Triggered = false
}