function UI_ExitMenu_Text(TextIndex)
{
	switch global.CurrentLanguage
	{
	case "en":
		if TextIndex = 0 {return "Save & Quit"}
		else if TextIndex = 1 {return "Quit Without Save"}
		else if TextIndex = 2 {return "Return To Game"}
		break;
		
	case "nl":
		if TextIndex = 0 {return "Opslaan & Stoppen"}
		else if TextIndex = 1 {return "Stop Zonder Opslag"}
		else if TextIndex = 2 {return "Terug Naar Spel"}
		break;
	
	case "fr":
		if TextIndex = 0 {return "Sauvegarder & Quitter"}
		else if TextIndex = 1 {return "Quitter Sans Sauvegarder"}
		else if TextIndex = 2 {return "Continuer"}
		break;
	}
}