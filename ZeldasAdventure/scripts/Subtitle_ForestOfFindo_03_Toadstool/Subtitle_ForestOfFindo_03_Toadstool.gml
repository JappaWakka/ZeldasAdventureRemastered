function Subtitle_ForestOfFindo_03_Toadstool_SlowAndStupidMobilins(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <=2.013 {return "Toadstool: Hoo hoo hoo hoo!"}
		else if AudioPosition >= 2.038 and AudioPosition <= 5.767 {return "Those Mobilins out there are so slow and stupid..."}
		else if AudioPosition >= 5.820 and AudioPosition <= 8.333 {return "they're still trying to eat their soup with a fork!"}
		else if AudioPosition >= 8.373 and AudioPosition <= 9.569 {return "Huh huh huh huh huh huh!"}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <=2.013 {return "Paddenstoel: Hoehoehoehoe!"}
		else if AudioPosition >= 2.038 and AudioPosition <= 5.767 {return "Al die Mobilins zijn zo traag en dom..."}
		else if AudioPosition >= 5.820 and AudioPosition <= 8.333 {return "dat ze nog steeds hun soep met een vork proberen te eten!"}
		else if AudioPosition >= 8.373 and AudioPosition <= 9.569 {return "Huh-huh-huh-huh-huh-huh!"}
		else return ""
		break;
	
	case "fr":
		if AudioPosition >= 0.000 and AudioPosition <=2.013 {return "Toadstool: Hoo hoo hoo hoo!"}
		else if AudioPosition >= 2.038 and AudioPosition <= 5.767 {return "Those Mobilins out there are so slow and stupid..."}
		else if AudioPosition >= 5.820 and AudioPosition <= 8.333 {return "they're still trying to eat their soup with a fork!"}
		else if AudioPosition >= 8.373 and AudioPosition <= 9.569 {return "Huh huh huh huh huh huh!"}
		else return ""
		break;
	}
}