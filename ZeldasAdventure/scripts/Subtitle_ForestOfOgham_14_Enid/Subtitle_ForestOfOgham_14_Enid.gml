function Subtitle_ForestOfOgham_14_Enid_ComeClose(AudioPosition)
{
	if AudioPosition >= 0.000 and AudioPosition <= 5.005 {return Localize.Subtitles.Dialogue.ForestOfOgham.Enid.ComeClose.Line01} //"Enid: Come close, Princess! I'll tell you a great secret!"
	else return ""
}

function Subtitle_ForestOfOgham_14_Enid_TrustNoOneWithHair(AudioPosition)
{
	if AudioPosition >=		  0.000 and AudioPosition <=  5.773 {return Localize.Subtitles.Dialogue.ForestOfOgham.Enid.TrustNoOneWithHair.Line01} //"Enid: Hear me whisper: Trust no one with hair! Huh huh huh!"
	else if AudioPosition >=  5.813 and AudioPosition <= 10.033 {return Localize.Subtitles.Dialogue.ForestOfOgham.Enid.TrustNoOneWithHair.Line02} //"Don't even trust me! Hah hah!"
	else if AudioPosition >= 10.123 and AudioPosition <= 15.303 {return Localize.Subtitles.Dialogue.ForestOfOgham.Enid.TrustNoOneWithHair.Line03} //"I've stolen one of your lives! Hee hee hee hee hee!"
	else return ""
}

function Subtitle_ForestOfOgham_14_Enid_TooClever(AudioPosition)
{
	if AudioPosition >= 0.000 and AudioPosition <= 4.700 {return Localize.Subtitles.Dialogue.ForestOfOgham.Enid.TooClever.Line01} //"Enid: Aaaaaaah, you're too clever for Enid!"
	else return ""
}

function Subtitle_ForestOfOgham_14_Enid_GoAway(AudioPosition)
{
	if AudioPosition >= 0.000 and AudioPosition <= 3.793 {return Localize.Subtitles.Dialogue.ForestOfOgham.Enid.TrustNoOneWithHair.Line01} //"Enid: Go away! I have nothing for you."
	if AudioPosition >= 3.818 and AudioPosition <= 5.893 {return Localize.Subtitles.Dialogue.ForestOfOgham.Enid.TrustNoOneWithHair.Line02} //"I have nothing to say to you."
	else return ""
}