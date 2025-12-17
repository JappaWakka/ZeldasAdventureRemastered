function Subtitle_VisionHenge_03_Shurmak_DoNotRoam(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <=	 4.320 {return Localize.Subtitles.Dialogue.VisionHenge.Shurmak.DoNotRoam.Line01} //"Shurmak: Zelda! Zelda! Do not roam unprotected."
	else if AudioPosition >= 4.546 and AudioPosition <=	 7.180 {return Localize.Subtitles.Dialogue.VisionHenge.Shurmak.DoNotRoam.Line02} //"Look nearby for something to aid you."
	else return ""
}