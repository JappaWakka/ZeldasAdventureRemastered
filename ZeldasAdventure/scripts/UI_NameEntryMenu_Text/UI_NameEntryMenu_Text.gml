function UI_NameEntryMenu_Text(TextIndex)
{
	switch global.CurrentLanguage
	{
	case "en":
		if TextIndex = 0 {return "ENTER THY NAME"}
		else if TextIndex = 1 {return "Done"}
		break;
		
	case "nl":
		if TextIndex = 0 {return "VOER UW NAAM IN"}
		else if TextIndex = 1 {return "Klaar"}
		break;
		
	case "fr":
		if TextIndex = 0 {return "ENTRE UN NOM"}
		else if TextIndex = 1 {return "OK"}
		break;
	}
}