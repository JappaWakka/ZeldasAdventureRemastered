
function Subtitle_ShrineOfEarth_01_Shurmak_EvilsOfGreed(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 2.013 {return "Shurmak: Beware the evils of greed."}
		if AudioPosition >= 2.207 and AudioPosition <= 4.880 {return "Act quickly, think on your feet"}
		if AudioPosition >= 4.953 and AudioPosition <= 6.947 {return "and you will be rewarded."}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 2.013 {return "Shurmak: Pas op voor het kwaad van hebzucht."}
		if AudioPosition >= 2.207 and AudioPosition <= 4.880 {return "Handel snel, denk goed na"}
		if AudioPosition >= 4.953 and AudioPosition <= 6.947 {return "en je zult beloond worden."}
		else return ""
		break;
	}
}