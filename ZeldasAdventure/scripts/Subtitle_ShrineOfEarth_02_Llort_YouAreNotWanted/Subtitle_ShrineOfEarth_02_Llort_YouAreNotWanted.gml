
function Subtitle_ShrineOfEarth_02_Llort_YouAreNotWanted(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 3.093 {return "Llort: Do not come in here! You are not wanted."}
		if AudioPosition >= 3.313 and AudioPosition <= 7.240 {return "I am Llort, and this is my shrine! All mine!"}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 3.093 {return "Llort: Kom hier niet naar binnen! Je bent niet welkom."}
		if AudioPosition >= 3.313 and AudioPosition <= 7.240 {return "Ik ben Llort, en dit is mijn Tempel! Helemaal van mij!"}
		else return ""
		break;
	}
}