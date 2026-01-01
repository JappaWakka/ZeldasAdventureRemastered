if QuitToMainMenu = true
{
	if global.FadeProgress = 1
	{
		Audio_StopMusic()
		room_goto(Room_MainMenu);
	}
}