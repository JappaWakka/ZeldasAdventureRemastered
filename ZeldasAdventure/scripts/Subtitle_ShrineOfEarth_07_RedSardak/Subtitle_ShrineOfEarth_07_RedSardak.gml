function Subtitle_ShrineOfEarth_07_RedSardak_NoThreat(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 1.706 {return Localize.Subtitles.Dialogue.ShrineOfEarth.RedSardak.NoThreat.Line01} //"Red Sardak: Hey dee hee, hoo dee bee!"
	else if AudioPosition >= 1.731 and AudioPosition <= 3.860 {return Localize.Subtitles.Dialogue.ShrineOfEarth.RedSardak.NoThreat.Line02} //"You're no threat to us down here!"
	else return ""
}


function Subtitle_ShrineOfEarth_07_RedSardak_FailedMission(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 2.267 {return Localize.Subtitles.Dialogue.ShrineOfEarth.RedSardak.FailedMission.Line01} //"Red Sardak: I've failed in my mission!"
	else if AudioPosition >= 2.367 and AudioPosition <= 4.553 {return Localize.Subtitles.Dialogue.ShrineOfEarth.RedSardak.FailedMission.Line02} //"Llort, this enemy is coming!"
	else return ""
}