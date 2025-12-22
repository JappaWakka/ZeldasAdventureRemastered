function Subtitle_PlainOfAndor_20_GlebbTheThirsty_BeforeFill(AudioPosition)
{
		if AudioPosition >=		 0.000 and AudioPosition <=  3.406 {return Localize.Subtitles.Dialogue.PlainOfAndor.GlebbTheThirsty.BeforeFill.Line01} //"Glebb the Thirsty: Young princess, please attend me."
		else if AudioPosition >= 3.773 and AudioPosition <=  7.506 {return Localize.Subtitles.Dialogue.PlainOfAndor.GlebbTheThirsty.BeforeFill.Line02} //"A traveler of kind intentions has found me at last!"
		else if AudioPosition >= 7.773 and AudioPosition <= 11.106 {return Localize.Subtitles.Dialogue.PlainOfAndor.GlebbTheThirsty.BeforeFill.Line03} //"I am collapsed with thirst and dryness."
		else return ""
}

function Subtitle_PlainOfAndor_20_GlebbTheThirsty_AfterFill(AudioPosition)
{
		if AudioPosition >=		 0.000 and AudioPosition <= 2.220 {return Localize.Subtitles.Dialogue.PlainOfAndor.GlebbTheThirsty.AfterFill.Line01} //"Glebb the Thirsty: Bless you, princess!"
		else if AudioPosition >= 2.420 and AudioPosition <= 5.920 {return Localize.Subtitles.Dialogue.PlainOfAndor.GlebbTheThirsty.AfterFill.Line02} //"You have saved the life of a weary old woman!"
		else if AudioPosition >= 6.427 and AudioPosition <= 9.553 {return Localize.Subtitles.Dialogue.PlainOfAndor.GlebbTheThirsty.AfterFill.Line03} //"I offer you these treasures."
		else return ""
}

function Subtitle_PlainOfAndor_20_GlebbTheThirsty_WhenAttacked(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 1.726 {return Localize.Subtitles.Dialogue.PlainOfAndor.GlebbTheThirsty.WhenAttacked.Line01} //"Glebb the Thirsty: You monster!"
	else if AudioPosition >= 1.900 and AudioPosition <= 4.433 {return Localize.Subtitles.Dialogue.PlainOfAndor.GlebbTheThirsty.WhenAttacked.Line02} //"How dare you assault a weak, old woman?!"
	else if AudioPosition >= 4.793 and AudioPosition <= 7.493 {return Localize.Subtitles.Dialogue.PlainOfAndor.GlebbTheThirsty.WhenAttacked.Line03} //"You will lose a life for this!"
	else return ""
}