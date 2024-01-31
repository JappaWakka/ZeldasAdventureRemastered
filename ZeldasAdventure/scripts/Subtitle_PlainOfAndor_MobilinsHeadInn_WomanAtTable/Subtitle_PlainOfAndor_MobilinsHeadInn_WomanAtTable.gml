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
