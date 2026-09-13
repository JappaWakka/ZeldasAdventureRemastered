//Gwynla
function Subtitle_Verna_Gwynla_YouLookTiredMyLady(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <=  2.293 {return Localize.Subtitles.Dialogue.Verna.Gwynla.YouLookTiredMyLady.Line01}
	else if AudioPosition >= 2.340 and AudioPosition <=  4.153 {return Localize.Subtitles.Dialogue.Verna.Gwynla.YouLookTiredMyLady.Line02}
	else if AudioPosition >= 4.183 and AudioPosition <=  5.526 {return Localize.Subtitles.Dialogue.Verna.Gwynla.YouLookTiredMyLady.Line03}
	else if AudioPosition >= 5.719 and AudioPosition <=  7.013 {return Localize.Subtitles.Dialogue.Verna.Gwynla.YouLookTiredMyLady.Line04}
	else return ""
}
//Lonlyn
function Subtitle_Verna_Lonlyn_Greetings(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 1.046 {return Localize.Subtitles.Dialogue.Verna.Lonlyn.Greetings.Line01}
	else if AudioPosition >= 1.077 and AudioPosition <= 2.999 {return Localize.Subtitles.Dialogue.Verna.Lonlyn.Greetings.Line02}
	else if AudioPosition >= 3.366 and AudioPosition <= 5.373 {return Localize.Subtitles.Dialogue.Verna.Lonlyn.Greetings.Line03}
	else if AudioPosition >= 5.633 and AudioPosition <= 7.340 {return Localize.Subtitles.Dialogue.Verna.Lonlyn.Greetings.Line04}
	else if AudioPosition >= 7.380 and AudioPosition <= 9.333 {return Localize.Subtitles.Dialogue.Verna.Lonlyn.Greetings.Line05}
	else return ""
}
function Subtitle_Verna_Lonlyn_CannotHelpYou(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 1.795 {return Localize.Subtitles.Dialogue.Verna.Lonlyn.CannotHelpYou.Line01}
	else if AudioPosition >= 1.820 and AudioPosition <= 3.186 {return Localize.Subtitles.Dialogue.Verna.Lonlyn.CannotHelpYou.Line02}
	else return ""
}