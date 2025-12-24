function Subtitle_ShrineOfEarth_21_Llort_TakingMyThings(AudioPosition)
{
	if AudioPosition >= 0.000 and AudioPosition <= 2.160 {return Localize.Subtitles.Dialogue.ShrineOfEarth.Llort.TakingMyThings.Line01} //"Llort: You've been taking my things."
	else if AudioPosition >= 2.186 and AudioPosition <= 4.833 {return Localize.Subtitles.Dialogue.ShrineOfEarth.Llort.TakingMyThings.Line02} //"Put them back! Don't touch anything!"
	else if AudioPosition >= 4.860 and AudioPosition <= 7.053 {return Localize.Subtitles.Dialogue.ShrineOfEarth.Llort.TakingMyThings.Line03} //"Those are my gems!"
	else return ""
}



