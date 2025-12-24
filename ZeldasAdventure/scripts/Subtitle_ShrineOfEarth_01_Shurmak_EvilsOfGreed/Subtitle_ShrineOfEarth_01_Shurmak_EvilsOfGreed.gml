
function Subtitle_ShrineOfEarth_01_Shurmak_EvilsOfGreed(AudioPosition)
{
	if AudioPosition >= 0.000 and AudioPosition <= 2.013 {return Localize.Subtitles.Dialogue.ShrineOfEarth.Shurmak.EvilsOfGreed.Line01} //"Shurmak: Beware the evils of greed."
	else if AudioPosition >= 2.207 and AudioPosition <= 4.880 {return Localize.Subtitles.Dialogue.ShrineOfEarth.Shurmak.EvilsOfGreed.Line02} //"Act quickly, think on your feet"
	else if AudioPosition >= 4.953 and AudioPosition <= 6.947 {return Localize.Subtitles.Dialogue.ShrineOfEarth.Shurmak.EvilsOfGreed.Line03} //"and you will be rewarded."
	else return ""
}