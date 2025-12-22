function Subtitle_PlainOfAndor_13_BeggarWoman_AfterGiveRubies(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 3.476 {return Localize.Subtitles.Dialogue.PlainOfAndor.BeggarWoman.AfterGiveRubies.Line01} //"Beggar: You will be blessed a thousand times"
	else if AudioPosition >= 3.501 and AudioPosition <= 6.396 {return Localize.Subtitles.Dialogue.PlainOfAndor.BeggarWoman.AfterGiveRubies.Line02} //"a thousand, fair princess!"
	else return ""
}

function Subtitle_PlainOfAndor_13_BeggarWoman_BeforeGiveRubies(AudioPosition)
{
	if AudioPosition	  >=  0.000 and AudioPosition <=  1.769 {return Localize.Subtitles.Dialogue.PlainOfAndor.BeggarWoman.BeforeGiveRubies.Line01} //"Beggar: Oh, fair princess"
	else if AudioPosition >=  1.769 and AudioPosition <=  6.870 {return Localize.Subtitles.Dialogue.PlainOfAndor.BeggarWoman.BeforeGiveRubies.Line02} //"pity a suffering creature exiled from Great Wimbich in the north!"
	else if AudioPosition >=  7.309 and AudioPosition <= 10.626 {return Localize.Subtitles.Dialogue.PlainOfAndor.BeggarWoman.BeforeGiveRubies.Line03} //"I ask only enough for a single meal for my children"
	else if AudioPosition >= 10.651 and AudioPosition <= 13.830 {return Localize.Subtitles.Dialogue.PlainOfAndor.BeggarWoman.BeforeGiveRubies.Line04} //"who hunger and are chilled by the wind."
	else return ""
}

function Subtitle_PlainOfAndor_13_BeggarWoman_WhenAttacked(AudioPosition)
{
	if AudioPosition	  >= 0.000 and AudioPosition <= 4.313 {return Localize.Subtitles.Dialogue.PlainOfAndor.BeggarWoman.WhenAttacked.Line01} //"Beggar: You must learn charity before you may become a true princess!"
	else if AudioPosition >= 4.947 and AudioPosition <= 8.460 {return Localize.Subtitles.Dialogue.PlainOfAndor.BeggarWoman.WhenAttacked.Line02} //"May you never see the red willow by the cave!"
	else return ""
	
}