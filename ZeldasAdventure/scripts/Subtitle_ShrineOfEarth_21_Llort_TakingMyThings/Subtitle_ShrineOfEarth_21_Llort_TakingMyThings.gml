function Subtitle_ShrineOfEarth_21_Llort_TakingMyThings(AudioPosition)
{
	switch string_lower(Localize.Meta.LanguageNameNative)
	{
	case "english":
		if AudioPosition >= 0.000 and AudioPosition <= 2.160 {return "Llort: You've been taking my things."}
		if AudioPosition >= 2.186 and AudioPosition <= 4.833 {return "Put them back! Don't touch anything!"}
		if AudioPosition >= 4.860 and AudioPosition <= 7.053 {return "Those are my gems!"}
		else return ""
		break;
		
	case "dutch":
		if AudioPosition >= 0.000 and AudioPosition <= 2.160 {return "Llort: Je hebt mijn spullen meegenomen."}
		if AudioPosition >= 2.186 and AudioPosition <= 4.833 {return "Leg ze terug! Raak niets meer aan!"}
		if AudioPosition >= 4.860 and AudioPosition <= 7.053 {return "Dat zijn mijn juwelen!"}
		else return ""
		break;
		
	case "french":
		if AudioPosition >= 0.000 and AudioPosition <= 2.160 {return "Llort: You've been taking my things."}
		if AudioPosition >= 2.186 and AudioPosition <= 4.833 {return "Put them back! Don't touch anything!"}
		if AudioPosition >= 4.860 and AudioPosition <= 7.053 {return "Those are my gems!"}
		else return ""
		break;
	}
}
