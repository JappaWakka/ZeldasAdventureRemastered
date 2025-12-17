function Subtitle_VisionHenge_09_Shurmak_DoNotBeHasty(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 2.753 {return Localize.Subtitles.Dialogue.VisionHenge.Shurmak.DoNotBeHasty.Line01} //"Shurmak: Zelda, do not be hasty!"
	else if AudioPosition >= 2.876 and AudioPosition <= 5.567 {return Localize.Subtitles.Dialogue.VisionHenge.Shurmak.DoNotBeHasty.Line02} //"There is something you must have nearby here."
	else if AudioPosition >= 5.992 and AudioPosition <= 8.961 {return Localize.Subtitles.Dialogue.VisionHenge.Shurmak.DoNotBeHasty.Line03} //"Exploration is the key to your success."
	else return ""
}