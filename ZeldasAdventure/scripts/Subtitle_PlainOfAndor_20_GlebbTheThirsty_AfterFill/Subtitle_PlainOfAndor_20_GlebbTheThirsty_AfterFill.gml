function Subtitle_PlainOfAndor_20_GlebbTheThirsty_BeforeFill(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 2.220 {return "Glebb the Thirsty: Bless you, princess!"}
		else if AudioPosition >= 2.420 and AudioPosition <= 5.920 {return "You have saved the life of a weary old woman!"}
		else if AudioPosition >= 6.427 and AudioPosition <= 9.553 {return "I offer you these treasures."}
		else return ""		
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 2.220 {return "Glebb de Dorstige: U zijt gezegend, prinses!"}
		else if AudioPosition >= 2.420 and AudioPosition <= 5.920 {return "U heeft het leven van een vermoeide oude vrouw gered!"}
		else if AudioPosition >= 6.427 and AudioPosition <= 9.553 {return "Ik bied u deze schatten aan."}
		else return ""		
		break;
	}
}