function Subtitle_ForestOfOgham_02_OghamMerchant_PlentyToBuy(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 1.374 {return "Merchant: Come here, bright young lady."}
		else if AudioPosition >= 1.399 and AudioPosition <= 3.080 {return "I have a wonderful bargain for you!"}
		else if AudioPosition >= 3.226 and AudioPosition <= 6.160 {return "Take some Ogham Herb for free, then look around."}
		else if AudioPosition >= 6.213 and AudioPosition <= 7.653 {return "There's plenty to buy!"}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 1.374 {return "Koopman: Kom eens hier, slimme jongedame."}
		else if AudioPosition >= 1.399 and AudioPosition <= 3.080 {return "Ik heb een geweldig koopje voor je!"}
		else if AudioPosition >= 3.226 and AudioPosition <= 6.160 {return "Neem gratis wat Ogham Kruid en kijk dan even rond."}
		else if AudioPosition >= 6.213 and AudioPosition <= 7.653 {return "Er is genoeg te koop!"}
		else return ""
		break;
	}
}
function Subtitle_ForestOfOgham_02_OghamMerchant_NothingToSell(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 3.059 {return "Merchant: I'm sorry, Princess, I've got nothing to sell today!"}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 3.059 {return "Koopman: Het spijt me, prinses, ik heb vandaag niets te koop!"}
		else return ""
		break;
	}
}
function Subtitle_ForestOfOgham_02_OghamMerchant_WisePurchase(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 2.846 {return "Merchant: That was a wise purchase, young princess!"}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 2.846 {return "Koopman: Dat was een wijze aankoop, jonge prinses!"}
		else return ""
		break;
	}
}