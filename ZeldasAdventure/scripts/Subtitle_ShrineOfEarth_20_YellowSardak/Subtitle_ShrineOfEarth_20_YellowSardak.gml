function Subtitle_ShrineOfEarth_20_YellowSardak_EnemyOfMyBoss(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 1.660 {return "Yellow Sardak: Hey! Who goes there?"}
		if AudioPosition >= 1.933 and AudioPosition <= 4.093 {return "Aren't you an enemy of my boss Llort?"}
		if AudioPosition >= 4.273 and AudioPosition <= 6.133 {return "You can't come in here."}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 1.660 {return "Gele Sardak: Hé! Wie is daar?"}
		if AudioPosition >= 1.933 and AudioPosition <= 4.093 {return "Ben jij niet een vijand van mijn baas Llort?"}
		if AudioPosition >= 4.273 and AudioPosition <= 6.133 {return "Je mag hier niet binnenkomen."}
		else return ""
		break;
	}
}

function Subtitle_ShrineOfEarth_20_YellowSardak_ShesComing(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 1.720 {return "Yellow Sardak: Hey, Llort! Watch out!"}
		if AudioPosition >= 1.966 and AudioPosition <= 3.019 {return "She's coming!"}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 1.720 {return "Gele Sardak: Hé, Llort! Kijk uit!"}
		if AudioPosition >= 1.966 and AudioPosition <= 3.019 {return "Ze komt eraan!"}
		else return ""
		break;
	}
}