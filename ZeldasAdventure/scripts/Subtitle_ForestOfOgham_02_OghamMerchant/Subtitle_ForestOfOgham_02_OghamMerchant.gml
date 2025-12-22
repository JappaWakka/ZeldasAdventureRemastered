function Subtitle_ForestOfOgham_02_OghamMerchant_PlentyToBuy(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 1.374 {return Localize.Subtitles.Dialogue.ForestOfOgham.OghamMerchant.PlentyToBuy.Line01} //"Merchant: Come here, bright young lady."
	else if AudioPosition >= 1.399 and AudioPosition <= 3.080 {return Localize.Subtitles.Dialogue.ForestOfOgham.OghamMerchant.PlentyToBuy.Line02} //"I have a wonderful bargain for you!"
	else if AudioPosition >= 3.226 and AudioPosition <= 6.160 {return Localize.Subtitles.Dialogue.ForestOfOgham.OghamMerchant.PlentyToBuy.Line03} //"Take some Ogham Herb for free, then look around."
	else if AudioPosition >= 6.213 and AudioPosition <= 7.653 {return Localize.Subtitles.Dialogue.ForestOfOgham.OghamMerchant.PlentyToBuy.Line04} //"There's plenty to buy!"
	else return ""
}

function Subtitle_ForestOfOgham_02_OghamMerchant_NothingToSell(AudioPosition)
{
	if AudioPosition >= 0.000 and AudioPosition <= 3.059 {return Localize.Subtitles.Dialogue.ForestOfOgham.OghamMerchant.NothingToSell.Line01} //"Merchant: I'm sorry, Princess, I've got nothing to sell today!"
	else return ""
}
function Subtitle_ForestOfOgham_02_OghamMerchant_WisePurchase(AudioPosition)
{
	if AudioPosition >= 0.000 and AudioPosition <= 2.846 {return Localize.Subtitles.Dialogue.ForestOfOgham.OghamMerchant.WisePurchase.Line01} //"Merchant: That was a wise purchase, young princess!"
	else return ""
}