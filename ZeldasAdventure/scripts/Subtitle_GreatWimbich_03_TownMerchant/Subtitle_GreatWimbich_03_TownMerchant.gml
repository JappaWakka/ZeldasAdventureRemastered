function Subtitle_GreatWimbich_TownMerchant_ForThirtySuns(AudioPosition)
{
	if		AudioPosition >=  0.000 and AudioPosition <=  2.301 {return Localize.Subtitles.Dialogue.GreatWimbich.TownMerchant.ForThirtySuns.Line01} //"Town Merchant: For thirty suns my husband and I"
	else if AudioPosition >=  2.326 and AudioPosition <=  5.313 {return Localize.Subtitles.Dialogue.GreatWimbich.TownMerchant.ForThirtySuns.Line02} //"ran the great locksmith forge for Warbane."
	else if AudioPosition >=  5.786 and AudioPosition <=  8.899 {return Localize.Subtitles.Dialogue.GreatWimbich.TownMerchant.ForThirtySuns.Line03} //"Then Ganon came and pressed Warbane into service"
	else if AudioPosition >=  8.931 and AudioPosition <= 10.520 {return Localize.Subtitles.Dialogue.GreatWimbich.TownMerchant.ForThirtySuns.Line04} //"for his own evil plans."
	else if AudioPosition >= 10.853 and AudioPosition <= 12.253 {return Localize.Subtitles.Dialogue.GreatWimbich.TownMerchant.ForThirtySuns.Line05} //"The forge was closed."
	else if AudioPosition >= 12.278 and AudioPosition <= 14.650 {return Localize.Subtitles.Dialogue.GreatWimbich.TownMerchant.ForThirtySuns.Line06} //"Warbane built a fortified retreat of his own"
	else if AudioPosition >= 14.751 and AudioPosition <= 17.419 {return Localize.Subtitles.Dialogue.GreatWimbich.TownMerchant.ForThirtySuns.Line07} //"somewhere off in the Forest of Canvula to the north."
	else if AudioPosition >= 17.720 and AudioPosition <= 20.527 {return Localize.Subtitles.Dialogue.GreatWimbich.TownMerchant.ForThirtySuns.Line08} //"We were left with nothing but these trinkets to sell!"
	else if AudioPosition >= 21.113 and AudioPosition <= 23.747 {return Localize.Subtitles.Dialogue.GreatWimbich.TownMerchant.ForThirtySuns.Line09} //"Perhaps they will be of use to you in the underground."
	else if AudioPosition >= 23.987 and AudioPosition <= 26.646 {return Localize.Subtitles.Dialogue.GreatWimbich.TownMerchant.ForThirtySuns.Line10} //"I can not give them up cheap."
	else return ""
}

function Subtitle_GreatWimbich_TownMerchant_KindaTiredToday(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 2.595 {return Localize.Subtitles.Dialogue.GreatWimbich.TownMerchant.KindaTiredToday.Line01} //"Town Merchant: I'm kinda... tired today."
	else if AudioPosition >= 2.619 and AudioPosition <= 5.607 {return Localize.Subtitles.Dialogue.GreatWimbich.TownMerchant.KindaTiredToday.Line02} //"Everything's turning to... mud."
	else return ""
}
