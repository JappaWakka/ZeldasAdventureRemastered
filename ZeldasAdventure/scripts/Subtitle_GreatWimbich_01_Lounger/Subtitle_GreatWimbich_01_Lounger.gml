function Subtitle_GreatWimbich_Lounger_HiThere(AudioPosition)
{
	if AudioPosition >=		  0.000 and AudioPosition <=  3.553 {return Localize.Subtitles.Dialogue.GreatWimbich.Lounger.HiThere.Line01}
	else if AudioPosition >=  3.578 and AudioPosition <=  7.687 {return Localize.Subtitles.Dialogue.GreatWimbich.Lounger.HiThere.Line02}
	else if AudioPosition >=  8.133 and AudioPosition <= 10.180 {return Localize.Subtitles.Dialogue.GreatWimbich.Lounger.HiThere.Line03}
	else if AudioPosition >= 10.205 and AudioPosition <= 12.255 {return Localize.Subtitles.Dialogue.GreatWimbich.Lounger.HiThere.Line04}
	else if AudioPosition >= 12.280 and AudioPosition <= 13.933 {return Localize.Subtitles.Dialogue.GreatWimbich.Lounger.HiThere.Line05}
	else return ""
}

function Subtitle_GreatWimbich_Lounger_DontWannaSeeYou(AudioPosition)
{
	if AudioPosition >= 0.000 and AudioPosition <= 3.073 {return Localize.Subtitles.Dialogue.GreatWimbich.Lounger.DontWannaSeeYou.Line01}
	else return ""
}


function Subtitle_GreatWimbich_Lounger_GoAway(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 2.820 {return Localize.Subtitles.Dialogue.GreatWimbich.Lounger.GoAway.Line01}
	else if AudioPosition >= 2.845 and AudioPosition <= 4.040 {return Localize.Subtitles.Dialogue.GreatWimbich.Lounger.GoAway.Line02}
	else return ""
}
