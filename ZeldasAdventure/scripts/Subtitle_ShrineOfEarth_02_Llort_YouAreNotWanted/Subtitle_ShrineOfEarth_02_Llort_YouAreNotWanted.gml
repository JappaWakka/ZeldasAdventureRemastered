
function Subtitle_ShrineOfEarth_02_Llort_YouAreNotWanted(AudioPosition)
{
	if AudioPosition >= 0.000 and AudioPosition <= 3.093 {return Localize.Subtitles.Dialogue.ShrineOfEarth.Llort.YouAreNotWanted.Line01} //"Llort: Do not come in here! You are not wanted."
	else if AudioPosition >= 3.313 and AudioPosition <= 7.240 {return Localize.Subtitles.Dialogue.ShrineOfEarth.Llort.YouAreNotWanted.Line02} //"I am Llort, and this is my shrine! All mine!"
	else return ""
}