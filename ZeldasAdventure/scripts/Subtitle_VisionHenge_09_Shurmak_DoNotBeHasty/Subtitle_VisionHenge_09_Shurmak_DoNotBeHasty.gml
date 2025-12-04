function Subtitle_VisionHenge_09_Shurmak_DoNotBeHasty(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 2.753 {return "Shurmak: Zelda, do not be hasty!"}
		else if AudioPosition >= 2.876 and AudioPosition <= 5.567 {return "There is something you must have nearby here."}
		else if AudioPosition >= 5.992 and AudioPosition <= 8.961 {return "Exploration is the key to your success."}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 2.753 {return "Shurmak: Zelda, wees niet zo haastig!"}
		else if AudioPosition >= 2.876 and AudioPosition <= 5.567 {return "Er is hier in de buurt iets dat je moet hebben."}
		else if AudioPosition >= 5.992 and AudioPosition <= 8.961 {return "Verkenning is de sleutel tot jouw succes."}
		else return ""
		break;
	
	case "fr":
		if AudioPosition >= 0.000 and AudioPosition <= 2.753 {return "Shurmak: Zelda, do not be hasty!"}
		else if AudioPosition >= 2.876 and AudioPosition <= 5.567 {return "There is something you must have nearby here."}
		else if AudioPosition >= 5.992 and AudioPosition <= 8.961 {return "Exploration is the key to your success."}
		else return ""
		break;
	}
}
