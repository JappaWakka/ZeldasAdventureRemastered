function Subtitle_PlainOfDonora_YalzanTheStern_10Rubies(AudioPosition)
{
	switch string_lower(Localize.Meta.LanguageNameNative)
	{
	case "english":
		if AudioPosition >= 0.000 and AudioPosition <=3.167 {return "Yalzan the Stern: Ten rubies gets you through the pass, young lady, no less."}
		else return ""
		break;
		
	case "dutch":
		if AudioPosition >= 0.000 and AudioPosition <=3.167 {return "Yalzan de Strenge: Voor tien robijnen mag je door de poort, jongedame, niet minder."}
		else return ""
		break;
		
	case "french":
		if AudioPosition >= 0.000 and AudioPosition <=3.167 {return "Yalzan the Stern: Ten rubies gets you through the pass, young lady, no less."}
		else return ""
		break;
	}
}

function Subtitle_PlainOfDonora_YalzanTheStern_20Rubies(AudioPosition)
{
	switch string_lower(Localize.Meta.LanguageNameNative)
	{
	case "english":
		if AudioPosition >= 0.000 and AudioPosition <=2.014 {return "Yalzan the Stern: Oh, force my hand, will you?"}
		else if AudioPosition >= 2.107 and AudioPosition <= 4.786 {return "The price is now 20 rubies."}
		else return ""
		break;
		
	case "dutch":
		if AudioPosition >= 0.000 and AudioPosition <=2.014 {return "Yalzan de Strenge: Oh, dwing je me je door te laten?"}
		else if AudioPosition >= 2.107 and AudioPosition <= 4.786 {return "De prijs is nu 20 robijnen."}
		else return ""
		break;
		
	case "french":
		if AudioPosition >= 0.000 and AudioPosition <=2.014 {return "Yalzan the Stern: Oh, force my hand, will you?"}
		else if AudioPosition >= 2.107 and AudioPosition <= 4.786 {return "The price is now 20 rubies."}
		else return ""
		break;
	}
}




