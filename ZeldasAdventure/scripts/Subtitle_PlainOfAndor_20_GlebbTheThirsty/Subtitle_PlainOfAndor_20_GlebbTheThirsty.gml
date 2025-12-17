function Subtitle_PlainOfAndor_20_GlebbTheThirsty_BeforeFill(AudioPosition)
{
	switch string_lower(Localize.Meta.LanguageNameNative)
	{
	case "english":
		if AudioPosition >= 0.000 and AudioPosition <= 3.406 {return "Glebb the Thirsty: Young princess, please attend me."}
		else if AudioPosition >= 3.773 and AudioPosition <= 7.506 {return "A traveler of kind intentions has found me at last!"}
		else if AudioPosition >= 7.773 and AudioPosition <= 11.106 {return "I am collapsed with thirst and dryness."}
		else return ""
		break;
		
	case "dutch":
		if AudioPosition >= 0.000 and AudioPosition <= 3.406 {return "Glebb de Dorstige: Jonge prinses, kom alstublieft bij me."}
		else if AudioPosition >= 3.773 and AudioPosition <= 7.506 {return "Een reiziger met goede bedoelingen heeft me eindelijk gevonden!"}
		else if AudioPosition >= 7.773 and AudioPosition <= 11.106 {return "Ik ben ingestort van de dorst en droogte."}
		else return ""
		break;
		
	case "french":
		if AudioPosition >= 0.000 and AudioPosition <= 3.406 {return "Glebb the Thirsty: Young princess, please attend me."}
		else if AudioPosition >= 3.773 and AudioPosition <= 7.506 {return "A traveler of kind intentions has found me at last!"}
		else if AudioPosition >= 7.773 and AudioPosition <= 11.106 {return "I am collapsed with thirst and dryness."}
		else return ""
		break;
	}
}

function Subtitle_PlainOfAndor_20_GlebbTheThirsty_AfterFill(AudioPosition)
{
	switch string_lower(Localize.Meta.LanguageNameNative)
	{
	case "english":
		if AudioPosition >= 0.000 and AudioPosition <= 2.220 {return "Glebb the Thirsty: Bless you, princess!"}
		else if AudioPosition >= 2.420 and AudioPosition <= 5.920 {return "You have saved the life of a weary old woman!"}
		else if AudioPosition >= 6.427 and AudioPosition <= 9.553 {return "I offer you these treasures."}
		else return ""
		break;
		
	case "dutch":
		if AudioPosition >= 0.000 and AudioPosition <= 2.220 {return "Glebb de Dorstige: U zijt gezegend, prinses!"}
		else if AudioPosition >= 2.420 and AudioPosition <= 5.920 {return "U heeft het leven van een vermoeide oude vrouw gered!"}
		else if AudioPosition >= 6.427 and AudioPosition <= 9.553 {return "Ik bied u deze schatten aan."}
		else return ""
		break;
		
	case "french":
		if AudioPosition >= 0.000 and AudioPosition <= 2.220 {return "Glebb the Thirsty: Bless you, princess!"}
		else if AudioPosition >= 2.420 and AudioPosition <= 5.920 {return "You have saved the life of a weary old woman!"}
		else if AudioPosition >= 6.427 and AudioPosition <= 9.553 {return "I offer you these treasures."}
		else return ""
		break;
	}
}

function Subtitle_PlainOfAndor_20_GlebbTheThirsty_YouMonster(AudioPosition)
{
	switch string_lower(Localize.Meta.LanguageNameNative)
	{
	case "english":
		if AudioPosition >= 0.000 and AudioPosition <= 1.726 {return "Glebb the Thirsty: You monster!"}
		else if AudioPosition >= 1.900 and AudioPosition <= 4.433 {return "How dare you assault a weak, old woman?!"}
		else if AudioPosition >= 4.793 and AudioPosition <= 7.493 {return "You will lose a life for this!"}
		else return ""
		break;
		
	case "dutch":
		if AudioPosition >= 0.000 and AudioPosition <= 1.726 {return "Glebb de Dorstige: Jij monster!!"}
		else if AudioPosition >= 1.900 and AudioPosition <= 4.433 {return "Hoe durf je een zwakke, oude vrouw aan te vallen?!"}
		else if AudioPosition >= 4.793 and AudioPosition <= 7.493 {return "Hiervoor verlies je een leven!"}
		else return ""
		break;
		
	case "french":
		if AudioPosition >= 0.000 and AudioPosition <= 1.726 {return "Glebb the Thirsty: You monster!"}
		else if AudioPosition >= 1.900 and AudioPosition <= 4.433 {return "How dare you assault a weak, old woman?!"}
		else if AudioPosition >= 4.793 and AudioPosition <= 7.493 {return "You will lose a life for this!"}
		else return ""
		break;
	}
}