function UI_NameEntryMenu_Text(TextIndex)
{
	switch string_lower(Localize.Meta.LanguageNameNative)
	{
	case "english":
		if TextIndex = 0 {return "ENTER THY NAME"}
		else if TextIndex = 1 {return "Done"}
		break;
		
	case "dutch":
		if TextIndex = 0 {return "VOER UW NAAM IN"}
		else if TextIndex = 1 {return "Klaar"}
		break;
		
	case "french":
		if TextIndex = 0 {return "ENTRE UN NOM"}
		else if TextIndex = 1 {return "OK"}
		break;
	}
}