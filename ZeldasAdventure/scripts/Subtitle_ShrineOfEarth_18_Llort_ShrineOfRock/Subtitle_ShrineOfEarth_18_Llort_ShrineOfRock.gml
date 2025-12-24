
function Subtitle_ShrineOfEarth_18_Llort_ShrineOfRock(AudioPosition)
{
	if AudioPosition >= 0.000 and AudioPosition <= 2.820 {return Localize.Subtitles.Dialogue.ShrineOfEarth.Llort.ShrineOfRock.Line01} //"Llort: I said this is my cave! Mine!"
	else if AudioPosition >= 3.066 and AudioPosition <= 5.886 {return Localize.Subtitles.Dialogue.ShrineOfEarth.Llort.ShrineOfRock.Line02} //"This is the Shrine of Rock and I am Llort!"
	else if AudioPosition >= 5.947 and AudioPosition <= 9.693 {return Localize.Subtitles.Dialogue.ShrineOfEarth.Llort.ShrineOfRock.Line03} //"Go away! Take nothing! It's all mine!"
	else return ""
}