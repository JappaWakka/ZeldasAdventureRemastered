function Subtitle_ShrineOfEarth_12_BlueSardak_ThoughtIWasAlone(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 2.967 {return "Blue Sardak: Huh? I... I thought I was alone here!"}
		if AudioPosition >= 3.213 and AudioPosition <= 6.086 {return "Llort, an enemy is in your cave!"}
		else return ""		
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 2.967 {return "Blauwe Sardak: Huh? Ik... Ik dacht dat ik alleen was hier!"}
		if AudioPosition >= 3.213 and AudioPosition <= 6.086 {return "Llort, er zit een vijand in je grot!"}
		else return ""		
		break;
	}
}

function Subtitle_ShrineOfEarth_12_BlueSardak_CouldntStopHer(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 2.680 {return "Blue Sardak: Llort, I couldn't stop her!"}
		if AudioPosition >= 3.086 and AudioPosition <= 4.673 {return "Get ready to fight!"}
		else return ""		
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 2.680 {return "Blauwe Sardak: Llort, ik kon haar niet stoppen!"}
		if AudioPosition >= 3.086 and AudioPosition <= 4.673 {return "Bereid je voor op een gevecht!"}
		else return ""		
		break;
	}
}