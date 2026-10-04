function Subtitle_ShrineOfIllusion_01_Shurmak_LookBeyondIllusion(AudioPosition)
{
	if AudioPosition >= 0.000 and AudioPosition <= 4.046 {return Localize.Subtitles.Dialogue.ShrineOfIllusion.Shurmak.LookBeyondIllusion.Line01}
	else if AudioPosition >= 4.200 and AudioPosition <= 6.987 {return Localize.Subtitles.Dialogue.ShrineOfIllusion.Shurmak.LookBeyondIllusion.Line02}
	else return ""
}