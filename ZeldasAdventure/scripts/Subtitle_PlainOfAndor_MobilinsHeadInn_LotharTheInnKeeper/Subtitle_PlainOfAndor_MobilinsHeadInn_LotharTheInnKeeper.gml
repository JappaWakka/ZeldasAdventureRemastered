function Subtitle_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_BeforeBuy(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 3.813 {return "Lothar the Innkeeper: Welcome to the Mobilin's Head Inn, my princess!"}
		else if AudioPosition >= 3.838 and AudioPosition <= 8.787 {return "You look dry, have a cup of Andor cider on the house."}
		else if AudioPosition >= 9.106 and AudioPosition <= 13.753 {return "I have a spell of Calm to sell, but it will cost you 100 rubies."}
		else return ""		
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 3.813 {return "Lothar de Herbergier: Welkom bij de Kop van de Mobilin Herberg, mijn prinses!"}
		else if AudioPosition >= 3.838 and AudioPosition <= 8.787 {return "U ziet er droog uit, neem een kopje Andor cider van het huis."}
		else if AudioPosition >= 9.106 and AudioPosition <= 13.753 {return "Ik heb een Kalmte-spreuk te koop, maar hij kost u 100 robijnen."}
		else return ""		
		break;
	}
}

function Subtitle_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_AfterBuy(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 3.813 {return "Lothar the Innkeeper: Welcome to the Mobilin's Head Inn, my princess!"}
		else if AudioPosition >= 3.838 and AudioPosition <= 8.787 {return "You look dry, have a cup of Andor cider on the house."}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 3.813 {return "Lothar de Herbergier: Welkom bij de Kop van de Mobilin Herberg, mijn prinses!"}
		else if AudioPosition >= 3.838 and AudioPosition <= 8.787 {return "U ziet er droog uit, neem een kopje Andor cider van het huis."}
		else return ""
		break;
	}
}

function Subtitle_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_PurchaseCalmSpell(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 2.620 {return "Lothar the Innkeeper: That is wise beyond your years."}
		else if AudioPosition >= 2.873 and AudioPosition <= 7.286 {return "The spell of Calm will help you when you need it most, use it well."}
		else if AudioPosition >= 7.387 and AudioPosition <= 10.840 {return "And look after yourself on the lonely Plain of Andor."}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 2.620 {return "Lothar de Herbergier: Dat is wijsheid die uw jaren te boven gaat."}
		else if AudioPosition >= 2.873 and AudioPosition <= 7.286 {return "De Kalmte-spreuk zal u helpen wanneer u hem het meest nodig heeft, gebruik hem goed."}
		else if AudioPosition >= 7.387 and AudioPosition <= 10.840 {return "En let goed op uzelf op de eenzame Vlakte van Andor."}
		else return ""
		break;
	}
}