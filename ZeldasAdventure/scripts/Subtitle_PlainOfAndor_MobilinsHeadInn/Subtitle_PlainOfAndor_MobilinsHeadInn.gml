#region Lothar The Inn Keeper

	function Subtitle_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_BeforeBuy(AudioPosition)
	{
		if AudioPosition >=		 0.000 and AudioPosition <=  3.813 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.LotharTheInnKeeper.BeforeBuy.Line01} //"Lothar the Innkeeper: Welcome to the Mobilin's Head Inn, my princess!"
		else if AudioPosition >= 3.838 and AudioPosition <=  8.787 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.LotharTheInnKeeper.BeforeBuy.Line02} //"You look dry, have a cup of Andor cider on the house."
		else if AudioPosition >= 9.106 and AudioPosition <= 13.753 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.LotharTheInnKeeper.BeforeBuy.Line03} //"I have a spell of calm to sell, but it will cost you 100 rubies."
		else return ""	
	}
		
	function Subtitle_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_AfterBuy(AudioPosition)
	{
		if AudioPosition >=		 0.000 and AudioPosition <= 3.813 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.LotharTheInnKeeper.AfterBuy.Line01} //"Lothar the Innkeeper: Welcome to the Mobilin's Head Inn, my princess!"
		else if AudioPosition >= 3.838 and AudioPosition <= 8.787 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.LotharTheInnKeeper.AfterBuy.Line02} //"You look dry, have a cup of Andor cider on the house."
		else return ""
	}
	
	function Subtitle_PlainOfAndor_MobilinsHeadInn_LotharTheInnKeeper_PurchaseCalmSpell(AudioPosition)
	{
			if AudioPosition >=		 0.000 and AudioPosition <=	 2.620 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.LotharTheInnKeeper.PurchaseCalmSpell.Line01} //"Lothar the Innkeeper: That is wise beyond your years."
			else if AudioPosition >= 2.873 and AudioPosition <=	 7.286 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.LotharTheInnKeeper.PurchaseCalmSpell.Line02} //"The spell of calm will help you when you need it most, use it well."
			else if AudioPosition >= 7.387 and AudioPosition <= 10.840 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.LotharTheInnKeeper.PurchaseCalmSpell.Line03} //"And look after yourself on the lonely Plain of Andor."
			else return ""
	}
#endregion

#region Woman At Table
	function Subtitle_PlainOfAndor_MobilinsHeadInn_WomanAtTable(AudioPosition)
	{
		if string_lower(Localize.Meta.LanguageNameNative) = "dutch"
		{
			if AudioPosition >= 0.000 and AudioPosition <= 1.786		{return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.WomanAtTable.Line01} //"Vrouw aan Tafel: Je ziet eruit als een eerlijke meid."
			else if AudioPosition >= 2.313 and AudioPosition <= 3.233	{return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.WomanAtTable.Line02} //"Kom even zitten."
			else if AudioPosition >= 3.753 and AudioPosition <= 6.196	{return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.WomanAtTable.Line03} //"Er wordt gezegd dat degenen die diep de aarde ingaan"
			else if AudioPosition >= 6.220 and AudioPosition <= 8.513	{return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.WomanAtTable.Line04} //"leren om de zonden van hebzucht te overwinnen."
			else if AudioPosition >= 9.037 and AudioPosition <= 11.970	{return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.WomanAtTable.Line05} //"Dat zou waar kunnen zijn, maar ik weet wel dit:"
			else if AudioPosition >= 12.199 and AudioPosition <= 15.192 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.WomanAtTable.Line06} //"een kaars en een zilveren sleutel kunnen je geluk brengen."
			else if AudioPosition >= 16.293 and AudioPosition <= 19.733 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.WomanAtTable.Line07} //"Schiet op, meisje, de tijd dringt!"
			else return ""
		}
		else
		{			
			if AudioPosition >=		 0.000 and AudioPosition <= 1.786	{return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.WomanAtTable.Line01} // "Woman at Table: You look like an honest maid."
			else if AudioPosition >= 2.313 and AudioPosition <= 3.233	{return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.WomanAtTable.Line02} // "Sit a moment."
			else if AudioPosition >= 3.753 and AudioPosition <= 8.513	{return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.WomanAtTable.Line03} // "It is said those who go deep into the earth learn to overcome the sins of greed."
			else if AudioPosition >= 9.037 and AudioPosition <= 11.970	{return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.WomanAtTable.Line04} // "That may be true, but I do know this:"
			else if AudioPosition >= 12.199 and AudioPosition <= 15.192 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.WomanAtTable.Line05} // "a candle and a silver key can bring you bliss."
			else if AudioPosition >= 16.293 and AudioPosition <= 19.733 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.WomanAtTable.Line06} // "Hurry on now, lass, time's a wasting!"
			else return ""
		}
	}
#endregion

#region Defeated Soldier
	function Subtitle_PlainOfAndor_MobilinsHeadInn_DefeatedSoldier(AudioPosition)
	{
		if AudioPosition >=		 0.000 and AudioPosition <= 2.920 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.DefeatedSoldier.Line01} //"Defeated Soldier: I am so exhausted from my travels."
		else if AudioPosition >= 3.000 and AudioPosition <= 7.113 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.DefeatedSoldier.Line02} //"If only I had known to cross the chasm rift with a ladder"
		else if AudioPosition >= 7.240 and AudioPosition <= 9.986 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.DefeatedSoldier.Line03} //"it would have saved me months!"
		else return ""
	}
#endregion

#region Krebb the Weary
	function Subtitle_PlainOfAndor_MobilinsHeadInn_KrebbTheWeary(AudioPosition)
	{
		if AudioPosition >=		  0.000 and AudioPosition <=  3.007 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.KrebbTheWeary.Line01} //"Krebb the Weary: Why spend a whole lifetime being defeated like me?"
		else if AudioPosition >=  3.032 and AudioPosition <=  6.940 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.KrebbTheWeary.Line02} //"Get it over with. Quit, go home, give up."
		else if AudioPosition >=  7.207 and AudioPosition <= 11.207 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.KrebbTheWeary.Line03} //"You're patient. I can see you're not one to surrender."
		else if AudioPosition >= 11.400 and AudioPosition <= 13.413 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.KrebbTheWeary.Line04} //"All right, take this dagger from me."
		else if AudioPosition >= 13.673 and AudioPosition <= 16.566 {return Localize.Subtitles.Dialogue.PlainOfAndor.MobilinsHeadInn.KrebbTheWeary.Line05} //"It may do you more service than it ever did me."
		else return ""
	}
#endregion