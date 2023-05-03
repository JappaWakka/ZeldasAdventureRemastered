function Subtitle_PlainOfAndor_13_BeggarWoman_AfterGiveRupees(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 3.476 {return "Beggar: You will be blessed a thousand times..."}
		else if AudioPosition >= 3.501 and AudioPosition <= 6.396 {return "a thousand, fair princess!"}
		else return ""		
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 3.476 {return "Beggar: U zijt duizendmaal gezegend..."}
		else if AudioPosition >= 3.501 and AudioPosition <= 6.396 {return "duizendmaal, schone prinses!"}
		else return ""		
		break;
	}
}