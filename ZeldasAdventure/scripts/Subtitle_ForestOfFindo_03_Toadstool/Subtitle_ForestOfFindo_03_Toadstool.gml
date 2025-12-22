function Subtitle_ForestOfFindo_03_Toadstool_SlowAndStupidMobilins(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 2.013 {return Localize.Subtitles.Dialogue.ForestOfFindo.TalkingToadstool.Line01} //"Toadstool: Hoo hoo hoo hoo!"}
	else if AudioPosition >= 2.038 and AudioPosition <= 5.767 {return Localize.Subtitles.Dialogue.ForestOfFindo.TalkingToadstool.Line02} //"Those Mobilins out there are so slow and stupid..."}
	else if AudioPosition >= 5.820 and AudioPosition <= 8.333 {return Localize.Subtitles.Dialogue.ForestOfFindo.TalkingToadstool.Line03} //"they're still trying to eat their soup with a fork!"}
	else if AudioPosition >= 8.373 and AudioPosition <= 9.569 {return Localize.Subtitles.Dialogue.ForestOfFindo.TalkingToadstool.Line04} //"Huh huh huh huh huh huh!"}
	else return ""
}
