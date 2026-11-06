if QuitToMainMenu = true
{
	if global.FadeProgress = 1
	{
		Audio_StopMusic()
		ResetDeathAmountForTriggers()
		room_goto(Room_MainMenu);
	}
}