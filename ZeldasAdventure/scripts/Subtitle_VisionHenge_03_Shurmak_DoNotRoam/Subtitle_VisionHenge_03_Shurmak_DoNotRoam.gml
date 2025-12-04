function Subtitle_VisionHenge_03_Shurmak_DoNotRoam(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 4.320 {return "Shurmak: Zelda! Zelda! Do not roam unprotected."}
		else if AudioPosition >= 4.546 and AudioPosition <= 7.180 {return "Look nearby for something to aid you."}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 4.320 {return "Shurmak: Zelda! Zelda! Dwaal niet rond zonder bescherming."}
		else if AudioPosition >= 4.546 and AudioPosition <= 7.180 {return "Zoek in de buurt naar iets dat je kan helpen."}
		else return ""
		break;
		
	case "fr":
		if AudioPosition >= 0.000 and AudioPosition <= 4.320 {return "Shurmak: Zelda! Zelda! Do not roam unprotected."}
		else if AudioPosition >= 4.546 and AudioPosition <= 7.180 {return "Look nearby for something to aid you."}
		else return ""
		break;
	}
}
