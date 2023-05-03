function Subtitle_PlainOfAndor_13_BeggarWoman_BeforeGiveRupees(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 1.769 {return "Beggar: Oh, fair princess..."}
		else if AudioPosition >= 1.769 and AudioPosition <= 6.870 {return "pity a suffering creature exiled from Great Wimbich in the north!"}
		else if AudioPosition >= 7.309 and AudioPosition <= 10.626 {return "I ask only enough for a single meal for my children..."}
		else if AudioPosition >= 10.651 and AudioPosition <= 13.830 {return "who hunger and are chilled by the wind."}
		else return ""		
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 1.769 {return "Bedelaar: Oh, schone prinses..."}
		else if AudioPosition >= 1.769 and AudioPosition <= 6.870 {return "heb meelij met een arm wezen, verbannen uit Great Wimbich in het noorden!"}
		else if AudioPosition >= 7.309 and AudioPosition <= 10.626 {return "Ik vraag slechts genoeg voor een enkele maaltijd voor mijn kinderen..."}
		else if AudioPosition >= 10.651 and AudioPosition <= 13.830 {return "die honger hebben en kou lijden door de wind."}
		else return ""		
		break;
	}
}