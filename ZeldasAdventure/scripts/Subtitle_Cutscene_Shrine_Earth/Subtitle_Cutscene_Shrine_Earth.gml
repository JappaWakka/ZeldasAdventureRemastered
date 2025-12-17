function Subtitle_Cutscene_Shrine_Earth(VideoPosition)
{
	if VideoPosition >= 12.183 and VideoPosition <=		 15.042 {return Localize.Subtitles.Cutscenes.ShrineOfEarth.Line01} //"Gaspra: Congratulations, Zelda. You've prevailed."
	else if VideoPosition >= 15.067 and VideoPosition <= 18.167 {return Localize.Subtitles.Cutscenes.ShrineOfEarth.Line02} //"Hurry now. You must travel to a place of festival."
	else if VideoPosition >= 18.333 and VideoPosition <= 22.150 {return Localize.Subtitles.Cutscenes.ShrineOfEarth.Line03} //"Rumor tells it is found in the great forest to the north."
	else if VideoPosition >= 22.350 and VideoPosition <= 26.233 {return Localize.Subtitles.Cutscenes.ShrineOfEarth.Line04} //"And remember: all is not what it seems."
	else return ""

}