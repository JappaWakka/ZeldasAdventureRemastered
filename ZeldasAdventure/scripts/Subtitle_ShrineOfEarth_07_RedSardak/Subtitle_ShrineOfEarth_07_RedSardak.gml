function Subtitle_ShrineOfEarth_07_RedSardak_NoThreat(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 1.706 {return "Red Sardak: Hey dee hee, hoo dee bee!"}
		if AudioPosition >= 1.731 and AudioPosition <= 3.860 {return "You're no threat to us down here!"}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 1.706 {return "Rode Sardak: Hee-die-hie, hoe-die-bie!"}
		if AudioPosition >= 1.731 and AudioPosition <= 3.860 {return "Je bent geen bedreiging voor ons hier beneden!"}
		else return ""
		break;
	}
}

function Subtitle_ShrineOfEarth_07_RedSardak_FailedMission(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 2.267 {return "Red Sardak: I've failed in my mission!"}
		if AudioPosition >= 2.367 and AudioPosition <= 4.553 {return "Llort, this enemy is coming!"}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 2.267 {return "Rode Sardak: Ik heb gefaald in mijn missie!"}
		if AudioPosition >= 2.367 and AudioPosition <= 4.553 {return "Llort, deze vijand komt eraan!"}
		else return ""
		break;
	}
}