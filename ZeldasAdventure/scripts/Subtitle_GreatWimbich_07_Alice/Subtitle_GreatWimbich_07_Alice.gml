function Subtitle_GreatWimbich_Alice_MyGoodness(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 2.853 {return Localize.Subtitles.Dialogue.GreatWimbich.Alice.MyGoodness.Line01} //"Alice: My goodness, it's the brave Zelda!
	else if AudioPosition >= 3.220 and AudioPosition <= 5.840 {return Localize.Subtitles.Dialogue.GreatWimbich.Alice.MyGoodness.Line02} //"I've heard so much about ya from everyone.
	else if AudioPosition >= 5.967 and AudioPosition <= 9.253 {return Localize.Subtitles.Dialogue.GreatWimbich.Alice.MyGoodness.Line03} //"Sit a goodly spell with Alice, and indulge an old woman.
	else return ""
	break;
}

function Subtitle_GreatWimbich_Alice_PeculiarLittleTown(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <=  2.867 {return Localize.Subtitles.Dialogue.GreatWimbich.Alice.MyGoodness.Line01} //"Alice: Great Wimbich is such a peculiar little town.
	else if AudioPosition >= 3.074 and AudioPosition <=  6.408 {return Localize.Subtitles.Dialogue.GreatWimbich.Alice.MyGoodness.Line02} //"The shops out on Upper Street have anything you could wish for
	else if AudioPosition >= 6.503 and AudioPosition <=  8.236 {return Localize.Subtitles.Dialogue.GreatWimbich.Alice.MyGoodness.Line03} //"and if you can't find it there
	else if AudioPosition >= 8.261 and AudioPosition <= 11.049 {return Localize.Subtitles.Dialogue.GreatWimbich.Alice.MyGoodness.Line04} //"you're sure to stumble across it in the market square.
	else return ""
}


function Subtitle_GreatWimbich_Alice_IfYaLikeMusic(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 3.183 {return Localize.Subtitles.Dialogue.GreatWimbich.Alice.IfYaLikeMusic.Line01} //"Alice: Now, if ya like music, follow your ear to Yvonne
	else if AudioPosition >= 3.208 and AudioPosition <= 5.765 {return Localize.Subtitles.Dialogue.GreatWimbich.Alice.IfYaLikeMusic.Line02} //"the musician down Skotness Road right here.
	else if AudioPosition >= 5.920 and AudioPosition <= 9.967 {return Localize.Subtitles.Dialogue.GreatWimbich.Alice.IfYaLikeMusic.Line03} //"If ya get tired in ya wanderings, this is a great place to settle down.
	else return ""
}

function Subtitle_GreatWimbich_Alice_NothingMoreToSay(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 2.241 {return Localize.Subtitles.Dialogue.GreatWimbich.Alice.IfYaLikeMusic.Line01} //"Alice: Zelda, it's been fun visiting with you
	else if AudioPosition >= 2.348 and AudioPosition <= 4.501 {return Localize.Subtitles.Dialogue.GreatWimbich.Alice.IfYaLikeMusic.Line02} //"but I have nothing more to say now.
	else if AudioPosition >= 4.648 and AudioPosition <= 6.434 {return Localize.Subtitles.Dialogue.GreatWimbich.Alice.IfYaLikeMusic.Line03} //"Come back and see me again, okay?
	else return ""
}


function Subtitle_GreatWimbich_Alice_RealNice(AudioPosition)
{
	if AudioPosition >= 0.000 and AudioPosition <= 2.241 {return Localize.Subtitles.Dialogue.GreatWimbich.Alice.RealNice.Line01} //"Alice: Yes, Zelda, it's real nice around here.
	else return ""
}
