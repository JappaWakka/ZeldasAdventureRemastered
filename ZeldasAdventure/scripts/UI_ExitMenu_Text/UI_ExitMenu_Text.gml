function UI_ExitMenu_Text(TextIndex)
{
	if TextIndex = 0 {return Localize.UI.ExitMenu.SaveAndQuit} //"Save & Quit"
	else if TextIndex = 1 {return Localize.UI.ExitMenu.QuitWithoutSave} // Quit Without Save
	else if TextIndex = 2 {return Localize.UI.ExitMenu.ReturnToGame} // "Return To Game"
}