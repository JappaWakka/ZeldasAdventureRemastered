function Subtitle_Cutscene_Shrine_Illusion(VideoPosition)
{
	if VideoPosition >= 9.720 and VideoPosition <=		 11.400 {return Localize.Subtitles.Cutscenes.Illusion.Line01}
	else if VideoPosition >= 11.607 and VideoPosition <= 14.433 {return Localize.Subtitles.Cutscenes.Illusion.Line02}
	else if VideoPosition >= 15.033 and VideoPosition <= 18.293 {return Localize.Subtitles.Cutscenes.Illusion.Line03}
	else if VideoPosition >= 18.413 and VideoPosition <= 23.187 {return Localize.Subtitles.Cutscenes.Illusion.Line04}
	else return ""

}