function Subtitle_PlainOfAndor_20_GlebbTheThirsty_BeforeFill(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 3.406 {return "Glebb the Thirsty: Young princess, please attend me."}
		else if AudioPosition >= 3.773 and AudioPosition <= 7.506 {return "A traveler of kind intentions has found me at last!"}
		else if AudioPosition >= 7.773 and AudioPosition <= 11.106 {return "I am collapsed with thirst and dryness."}
		else return ""		
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 3.406 {return "Glebb de Dorstige: Jonge prinses, kom alstublieft bij me."}
		else if AudioPosition >= 3.773 and AudioPosition <= 7.506 {return "Een reiziger met goede bedoelingen heeft me eindelijk gevonden!"}
		else if AudioPosition >= 7.773 and AudioPosition <= 11.106 {return "Ik ben ingestort van de dorst en droogte."}
		else return ""		
		break;
	}
}