function Subtitle_ShrineOfEarth_12_BlueSardak_ThoughtIWasAlone(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 2.967 {return Localize.Subtitles.Dialogue.ShrineOfEarth.BlueSardak.ThoughtIWasAlone.Line01} //"Blue Sardak: Huh? I... I thought I was alone here!"
	else if AudioPosition >= 3.213 and AudioPosition <= 6.086 {return Localize.Subtitles.Dialogue.ShrineOfEarth.BlueSardak.ThoughtIWasAlone.Line02} //"Llort, an enemy is in your cave!"
	else return ""
}


function Subtitle_ShrineOfEarth_12_BlueSardak_CouldntStopHer(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 2.680 {return Localize.Subtitles.Dialogue.ShrineOfEarth.BlueSardak.CouldntStopHer.Line01} //"Blue Sardak: Llort, I couldn't stop her!"
	else if AudioPosition >= 3.086 and AudioPosition <= 4.673 {return Localize.Subtitles.Dialogue.ShrineOfEarth.BlueSardak.CouldntStopHer.Line02} //"Get ready to fight!"
	else return ""
}