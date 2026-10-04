function Subtitle_ShrineOfIllusion_17_Pasquinade_LookToYourHeart(AudioPosition)
{
	if AudioPosition >= 1.440 and AudioPosition <= 4.300 {return Localize.Subtitles.Dialogue.ShrineOfIllusion.Pasquinade.LookToYourHeart.Line01}
	else if AudioPosition >= 4.367 and AudioPosition <= 7.200 {return Localize.Subtitles.Dialogue.ShrineOfIllusion.Pasquinade.LookToYourHeart.Line02}
	else if AudioPosition >= 7.313 and AudioPosition <= 9.380 {return Localize.Subtitles.Dialogue.ShrineOfIllusion.Pasquinade.LookToYourHeart.Line03}
	else return ""
}