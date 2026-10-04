function Subtitle_ShrineOfIllusion_24_Pasquinade_WelcomeMyLovely(AudioPosition)
{
	if AudioPosition >= 1.500 and AudioPosition <= 3.694 {return Localize.Subtitles.Dialogue.ShrineOfIllusion.Pasquinade.WelcomeMyLovely.Line01}
	else if AudioPosition >= 3.780 and AudioPosition <= 6.007 {return Localize.Subtitles.Dialogue.ShrineOfIllusion.Pasquinade.WelcomeMyLovely.Line02}
	else if AudioPosition >= 6.293 and AudioPosition <= 10.400 {return Localize.Subtitles.Dialogue.ShrineOfIllusion.Pasquinade.WelcomeMyLovely.Line03}
	else return ""
}