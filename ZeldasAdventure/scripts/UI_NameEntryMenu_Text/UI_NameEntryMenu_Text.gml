function UI_NameEntryMenu_Text(TextIndex)
{
	if TextIndex = 0 {return Localize.UI.NameEntryMenu.EnterThyName} //"ENTER THY NAME"
	else if TextIndex = 1 {return Localize.UI.NameEntryMenu.DoneButton} //"Done"
}