#region Lothar The Inn Keeper

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
			if AudioPosition >= 0.000 and AudioPosition <= 3.813 {return "Lothar de Herbergier: Welkom bij de Herberg \"De Kop van de Mobilin\", mijn prinses!"}
			else if AudioPosition >= 3.838 and AudioPosition <= 8.787 {return "U ziet er uitgedroogd uit, neem een kopje Andor-cider van het huis."}
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
#endregion

#region Woman At Table
	function Subtitle_PlainOfAndor_MobilinsHeadInn_WomanAtTable(AudioPosition)
	{
		switch global.CurrentLanguage
		{
		case "en":
			if AudioPosition >= 0.000 and AudioPosition <= 1.786 {return "Woman at Table: You look like an honest maid."}
			else if AudioPosition >= 2.313 and AudioPosition <= 3.233 {return "Sit a moment."}
			else if AudioPosition >= 3.753 and AudioPosition <= 8.513 {return "It is said those who go deep into the earth learn to overcome the sins of greed."}
			else if AudioPosition >= 9.037 and AudioPosition <= 11.970 {return "That may be true, but I do know this:"}
			else if AudioPosition >= 12.199 and AudioPosition <= 15.192 {return "a candle and a silver key can bring you bliss."}
			else if AudioPosition >= 16.293 and AudioPosition <= 19.733 {return "Hurry on now, lass, time's a wasting!"}
			else return ""
			break;
			
		case "nl":
			if AudioPosition >= 0.000 and AudioPosition <= 1.786 {return "Vrouw aan Tafel: Je ziet eruit als een eerlijke meid."}
			else if AudioPosition >= 2.313 and AudioPosition <= 3.233 {return "Ga even zitten."}
			else if AudioPosition >= 3.753 and AudioPosition <= 6.196 {return "Er wordt gezegd dat degenen die diep de aarde ingaan"}
			else if AudioPosition >= 6.220 and AudioPosition <= 8.513 {return "leren om de zonden van hebzucht te overwinnen."}
			else if AudioPosition >= 9.037 and AudioPosition <= 11.970 {return "Dat kan waar zijn, maar ik weet wel dit:"}
			else if AudioPosition >= 12.199 and AudioPosition <= 15.192 {return "een kaars en een zilveren sleutel kunnen je geluk brengen."}
			else if AudioPosition >= 16.293 and AudioPosition <= 19.733 {return "Schiet op, meisje, de tijd is aan het verspillen!"}
			else return ""
			break;
		}
	}
#endregion

#region Defeated Soldier
	function Subtitle_PlainOfAndor_MobilinsHeadInn_DefeatedSoldier(AudioPosition)
	{
		switch global.CurrentLanguage
		{
		case "en":
			if AudioPosition >= 0.000 and AudioPosition <= 2.920 {return "Defeated Soldier: I am so exhausted from my travels."}
			else if AudioPosition >= 3.000 and AudioPosition <= 7.113 {return "If only I had known to cross the chasm rift with a ladder"}
			else if AudioPosition >= 7.240 and AudioPosition <= 9.986 {return "it would have saved me months!"}
			else return ""
			break;
			
		case "nl":
			if AudioPosition >= 0.000 and AudioPosition <= 2.920 {return "Verslagen soldaat: Ik ben zo uitgeput van mijn reizen."}
			else if AudioPosition >= 3.000 and AudioPosition <= 7.113 {return "Had ik maar geweten dat ik de kloof met een ladder kon oversteken"}
			else if AudioPosition >= 7.240 and AudioPosition <= 9.986 {return "dat had me maanden bespaard!"}
			else return ""
			break;
		}
	}
#endregion

#region Krebb the Weary
	function Subtitle_PlainOfAndor_MobilinsHeadInn_KrebbTheWeary_Dagger(AudioPosition)
	{
		switch global.CurrentLanguage
		{
		case "en":
			if AudioPosition >= 0.000 and AudioPosition <= 3.007 {return "Krebb the Weary: Why spend a whole lifetime being defeated like me?"}
			else if AudioPosition >= 3.032 and AudioPosition <= 6.940 {return "Get it over with. Quit, go home, give up."}
			else if AudioPosition >= 7.207 and AudioPosition <= 11.207 {return "You're patient. I can see you're not one to surrender."}
			else if AudioPosition >= 11.400 and AudioPosition <= 13.413 {return "All right, take this dagger from me."}
			else if AudioPosition >= 13.673 and AudioPosition <= 16.566 {return "It may do you more service than it ever did me."}
			else return ""
			break;
			
		case "nl":
			if AudioPosition >= 0.000 and AudioPosition <= 3.007 {return "Krebb de Vermoeide: Waarom een heel leven lang verslagen worden zoals ik?"}
			else if AudioPosition >= 3.032 and AudioPosition <= 6.940 {return "Maak er een einde aan. Stop, ga naar huis, geef het op."}
			else if AudioPosition >= 7.207 and AudioPosition <= 11.207 {return "Je bent geduldig. Ik zie dat je je niet zomaar overgeeft."}
			else if AudioPosition >= 11.400 and AudioPosition <= 13.413 {return "Oké, neem deze dolk van me af."}
			else if AudioPosition >= 13.673 and AudioPosition <= 16.566 {return "Die zal je vast meer helpen dan het mij ooit heeft gedaan."}
			else return ""
			break;
		}
	}
#endregion