function Subtitle_VisionHenge_04_Shurmak_Introduction(AudioPosition)
{
	if AudioPosition >= 0.000 and AudioPosition <=		1.787	{return Localize.Subtitles.Dialogue.VisionHenge.Shurmak.Introduction.Line01} //"Shurmak: I am Shurmak, your guide."
	else if AudioPosition >= 2.113 and AudioPosition <= 4.386	{return Localize.Subtitles.Dialogue.VisionHenge.Shurmak.Introduction.Line02} //"I have known you since you were a child."
	else if AudioPosition >= 4.607 and AudioPosition <= 6.473	{return Localize.Subtitles.Dialogue.VisionHenge.Shurmak.Introduction.Line03} //"You were given a difficult challenge."
	else if AudioPosition >= 6.840 and AudioPosition <= 9.660	{return Localize.Subtitles.Dialogue.VisionHenge.Shurmak.Introduction.Line04} //"You will have to go far and overcome great danger."
	else if AudioPosition >= 9.860 and AudioPosition <= 13.893	{return Localize.Subtitles.Dialogue.VisionHenge.Shurmak.Introduction.Line05} //"Stay calm and use your knowledge and strength to defeat your enemies."
	else if AudioPosition >= 14.335 and AudioPosition <= 17.368 {return Localize.Subtitles.Dialogue.VisionHenge.Shurmak.Introduction.Line06} //"Remember what you learn along the way, and persevere."
	else if AudioPosition >= 17.889 and AudioPosition <= 20.709 {return Localize.Subtitles.Dialogue.VisionHenge.Shurmak.Introduction.Line07} //"Go now to the one who has a bed but never sleeps"
	else if AudioPosition >= 21.033 and AudioPosition <= 23.453 {return Localize.Subtitles.Dialogue.VisionHenge.Shurmak.Introduction.Line08} //"where by its side the red willow weeps"
	else if AudioPosition >= 23.680 and AudioPosition <= 26.066 {return Localize.Subtitles.Dialogue.VisionHenge.Shurmak.Introduction.Line09} //"and to its mouth that never speaks."
	else return ""
}
