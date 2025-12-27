function UI_MainMenu_Text(TextIndex)
{
	if TextIndex = 3 {return Localize.UI.MainMenu.PlayButton } //"PLAY"}
	else if TextIndex = 4
	{
		switch ConfirmDelete
		{
			case 0:
				return Localize.UI.MainMenu.DeleteButton //"DELETE"
			case 1:
				return Localize.UI.MainMenu.DeleteYouSure //"YOU SURE?"
			case 2:
				return Localize.UI.MainMenu.DeleteDeleted //"DELETED"
		}
	}
	else if TextIndex = 5 {return Localize.UI.MainMenu.SettingsButton } //"SETTINGS"}
	else if TextIndex = 6 {return Localize.UI.MainMenu.TutorialButton } //"TUTORIAL"}
	else if TextIndex = 7 {return Localize.UI.MainMenu.ExitButton } //"Exit"}
	else if TextIndex = 8 {return Localize.UI.MainMenu.EmptySaveFile } //"EMPTY"}
}