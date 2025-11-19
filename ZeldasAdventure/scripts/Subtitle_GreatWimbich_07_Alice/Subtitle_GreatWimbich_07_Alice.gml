function Subtitle_GreatWimbich_Alice_MyGoodness(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <=2.853 {return "Alice: My goodness, it's the brave Zelda!"}
		else if AudioPosition >= 3.220 and AudioPosition <= 5.840 {return "I've heard so much about ya from everyone."}
		else if AudioPosition >= 5.967 and AudioPosition <= 9.253 {return "Sit a goodly spell with Alice, and indulge an old woman."}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <=2.853 {return "Alice: Mijn hemel, het is de dappere Zelda!"}
		else if AudioPosition >= 3.220 and AudioPosition <= 5.840 {return "Ik heb van iedereen zoveel over je gehoord."}
		else if AudioPosition >= 5.967 and AudioPosition <= 9.253 {return "Kom lekker bij Alice zitten en doe een oude vrouw een plezier."}
		else return ""
		break;
	}
}

function Subtitle_GreatWimbich_Alice_PeculiarLittleTown(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <=2.867 {return "Alice: Great Wimbich is such a peculiar little town."}
		else if AudioPosition >= 3.074 and AudioPosition <= 6.408 {return "The shops out on Upper Street have anything you could wish for"}
		else if AudioPosition >= 6.503 and AudioPosition <= 8.236 {return "and if you can't find it there"}
		else if AudioPosition >= 8.261 and AudioPosition <= 11.049 {return "you're sure to stumble across it in the market square."}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <=2.867 {return "Alice: Great Wimbich is zo'n eigenaardig dorpje."}
		else if AudioPosition >= 3.074 and AudioPosition <= 6.408 {return "De winkels in de Bovenstraat hebben alles wat je maar kunt wensen"}
		else if AudioPosition >= 6.503 and AudioPosition <= 8.236 {return "en als je het daar niet kunt vinden"}
		else if AudioPosition >= 8.261 and AudioPosition <= 11.049 {return "kom je het vast en zeker tegen op het marktplein."}
		else return ""
		break;
	}
}


function Subtitle_GreatWimbich_Alice_IfYaLikeMusic(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 3.183 {return "Alice: Now, if ya like music, follow your ear to Yvonne"}
		else if AudioPosition >= 3.208 and AudioPosition <= 5.765 {return "the musician down Skotness Road right here."}
		else if AudioPosition >= 5.920 and AudioPosition <= 9.967 {return "If ya get tired in ya wanderings, this is a great place to settle down."}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 3.183 {return "Alice: Maar als je van muziek houdt, volg dan je oren naar Yvonne"}
		else if AudioPosition >= 3.208 and AudioPosition <= 5.765 {return "de muzikante hier verderop de Skotnessweg."}
		else if AudioPosition >= 5.920 and AudioPosition <= 9.967 {return "Als je tijdens je reizen uitgeput raakt, is dit een geweldige plek om bij te komen."}
		else return ""
		break;
	}
}

function Subtitle_GreatWimbich_Alice_NothingMoreToSay(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <=2.241 {return "Alice: Zelda, it's been fun visiting with you"}
		else if AudioPosition >= 2.348 and AudioPosition <= 4.501 {return "but I have nothing more to say now."}
		else if AudioPosition >= 4.648 and AudioPosition <= 6.434 {return "Come back and see me again, okay?"}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <=2.241 {return "Alice: Zelda, het was leuk om met je te praten"}
		else if AudioPosition >= 2.348 and AudioPosition <= 4.501 {return "maar ik heb je niets meer te zeggen."}
		else if AudioPosition >= 4.648 and AudioPosition <= 6.434 {return "Kom nog eens langs, oké?"}
		else return ""
		break;
	}
}


function Subtitle_GreatWimbich_Alice_RealNice(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <=2.241 {return "Alice: Yes, Zelda, it's real nice around here."}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <=2.241 {return "Alice: Ja, Zelda, het is echt heel mooi in deze omgeving."}
		else return ""
		break;
	}
}
