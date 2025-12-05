function UI_Cutscene_Skip_Text()
{
	switch global.CurrentLanguage
	{
	case "en":
		return "Press again to skip"
		break;
		
	case "nl":
		return "Druk nogmaals om over te slaan"
		break;
		
	case "fr":
		return "Appuie pour passer"
		break;
	}
}