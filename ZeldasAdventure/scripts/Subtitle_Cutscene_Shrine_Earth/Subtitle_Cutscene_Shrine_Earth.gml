function Subtitle_Cutscene_Shrine_Earth(VideoPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if VideoPosition >= 12.183 and VideoPosition <= 15.042 {return "Gaspra: Congratulations, Zelda. You've prevailed."}
		else if VideoPosition >= 15.067 and VideoPosition <= 18.167 {return "Hurry now. You must travel to a place of festival."}
		else if VideoPosition >= 18.333 and VideoPosition <= 22.150 {return "Rumor tells it is found in the great forest to the north."}
		else if VideoPosition >= 22.350 and VideoPosition <= 26.233 {return "And remember: all is not what it seems."}
		else return ""
		break;
		
	case "nl":
		if VideoPosition >= 12.183 and VideoPosition <= 15.042 {return "Gaspra: Gefeliciteerd, Zelda. Je hebt gezegevierd."}
		else if VideoPosition >= 15.067 and VideoPosition <= 18.167 {return "Haast je nu. Je moet naar een festivalplaats reizen."}
		else if VideoPosition >= 18.333 and VideoPosition <= 22.150 {return "Het gerucht gaat dat het in het grote bos in het noorden te vinden is."}
		else if VideoPosition >= 22.350 and VideoPosition <= 26.233 {return "En onthoud: niet alles is wat het lijkt."}
		else return ""
		break;
	}
}