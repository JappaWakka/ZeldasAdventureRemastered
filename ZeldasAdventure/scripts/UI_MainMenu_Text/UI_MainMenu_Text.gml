function UI_MainMenu_Text(TextIndex)
{
	switch string_lower(Localize.Meta.LanguageNameNative)
	{
	case "english":
		if TextIndex = 3 {return "PLAY"}
		else if TextIndex = 4
		{
			switch ConfirmDelete
			{
				case 0:
					return "DELETE"
				case 1:
					return "YOU SURE?"
				case 2:
					return "DELETED"
			}
		}
		else if TextIndex = 5 {return "SETTINGS"}
		else if TextIndex = 6 {return "TUTORIAL"}
		else if TextIndex = 7 {return "Exit"}
		else if TextIndex = 8 {return "EMPTY"}
		break;
		
	case "dutch":
		if TextIndex = 3 {return "SPEEL"}
		else if TextIndex = 4
		{
			switch ConfirmDelete
			{
				case 0:
					return "WIS"
				case 1:
					return "ZEKER?"
				case 2:
					return "GEWIST"
			}
		}
		else if TextIndex = 5 {return "OPTIES"}
		else if TextIndex = 6 {return "UITLEG"}
		else if TextIndex = 7 {return "Stop"}
		else if TextIndex = 8 {return "LEEG"}
		break;
	
	case "french":
		if TextIndex = 3 {return "JOUER"}
		else if TextIndex = 4
		{
			switch ConfirmDelete
			{
				case 0:
					return "SUPPRIMER"
				case 1:
					return "SUR ?"
				case 2:
					return "SUPPRIMÉ"
			}
		}
		else if TextIndex = 5 {return "PARAMÈTRES"}
		else if TextIndex = 6 {return "TUTORIEL"}
		else if TextIndex = 7 {return "Quitter"}
		else if TextIndex = 8 {return "VIDE"}
		break;
		
	}
}