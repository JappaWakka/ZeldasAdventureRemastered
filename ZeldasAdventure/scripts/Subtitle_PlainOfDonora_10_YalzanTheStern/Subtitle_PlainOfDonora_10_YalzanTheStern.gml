function Subtitle_PlainOfDonora_10_YalzanTheStern_Toll10Rubies(AudioPosition)
{
	if AudioPosition >= 0.000 and AudioPosition <= 3.167 {return Localize.Subtitles.Dialogue.PlainOfDonora.YalzanTheStern.Toll10Rubies.Line01} //"Yalzan the Stern: Ten rubies gets you through the pass, young lady, no less."
	else return ""
}

function Subtitle_PlainOfDonora_10_YalzanTheStern_Toll20Rubies(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 2.014 {return Localize.Subtitles.Dialogue.PlainOfDonora.YalzanTheStern.Toll20Rubies.Line01} //"Yalzan the Stern: Oh, force my hand, will you?"
	else if AudioPosition >= 2.107 and AudioPosition <= 4.786 {return Localize.Subtitles.Dialogue.PlainOfDonora.YalzanTheStern.Toll20Rubies.Line02} //"The price is now 20 rubies."
	else return ""
}