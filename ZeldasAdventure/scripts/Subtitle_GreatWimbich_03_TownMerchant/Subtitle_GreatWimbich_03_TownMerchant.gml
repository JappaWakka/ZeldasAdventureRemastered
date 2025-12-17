function Subtitle_GreatWimbich_TownMerchant_ForThirtySuns(AudioPosition)
{
	switch string_lower(Localize.Meta.LanguageNameNative)
	{
	case "english":
		if AudioPosition >= 0.000 and AudioPosition <= 2.301 {return "Town Merchant: For thirty suns my husband and I"}
		else if AudioPosition >= 2.326 and AudioPosition <= 5.313 {return "ran the great locksmith forge for Warbane."}
		else if AudioPosition >= 5.786 and AudioPosition <= 8.899 {return "Then Ganon came and pressed Warbane into service"}
		else if AudioPosition >= 8.931 and AudioPosition <= 10.520 {return "for his own evil plans."}
		else if AudioPosition >= 10.853 and AudioPosition <= 12.253 {return "The forge was closed."}
		else if AudioPosition >= 12.278 and AudioPosition <= 14.650 {return "Warbane built a fortified retreat of his own"}
		else if AudioPosition >= 14.751 and AudioPosition <= 17.419 {return "somewhere off in the Forest of Canvula to the north."}
		else if AudioPosition >= 17.720 and AudioPosition <= 20.527 {return "We were left with nothing but these trinkets to sell!"}
		else if AudioPosition >= 21.113 and AudioPosition <= 23.747 {return "Perhaps they will be of use to you in the underground."}
		else if AudioPosition >= 23.987 and AudioPosition <= 26.646 {return "I can not give them up cheap."}
		else return ""
		break;
		
	case "dutch":
		if AudioPosition >= 0.000 and AudioPosition <= 2.301 {return "Dorpshandelaar: Dertig zonnen lang hebben mijn man en ik"}
		else if AudioPosition >= 2.326 and AudioPosition <= 5.313 {return "de grote slotenmakersmederij voor Warbane gerund."}
		else if AudioPosition >= 5.786 and AudioPosition <= 8.899 {return "Toen kwam Ganon en dwong Warbane om voor zijn"}
		else if AudioPosition >= 8.931 and AudioPosition <= 10.520 {return "eigen kwaadaardige plannen te werken."}
		else if AudioPosition >= 10.853 and AudioPosition <= 12.253 {return "De smederij werd gesloten."}
		else if AudioPosition >= 12.278 and AudioPosition <= 14.650 {return "Warbane bouwde zijn eigen versterkte toevluchtsoord"}
		else if AudioPosition >= 14.751 and AudioPosition <= 17.419 {return "ergens in het Bos van Canvula in het noorden."}
		else if AudioPosition >= 17.720 and AudioPosition <= 20.527 {return "We hadden niets meer behalve deze snuisterijen om te verkopen!"}
		else if AudioPosition >= 21.113 and AudioPosition <= 23.747 {return "Misschien heb je iets aan ze in de ondergrondse wereld."}
		else if AudioPosition >= 23.987 and AudioPosition <= 26.646 {return "Ik kan ze niet goedkoop afstaan."}
		else return ""
		break;
		
	case "french":
		if AudioPosition >= 0.000 and AudioPosition <= 2.301 {return "Town Merchant: For thirty suns my husband and I"}
		else if AudioPosition >= 2.326 and AudioPosition <= 5.313 {return "ran the great locksmith forge for Warbane."}
		else if AudioPosition >= 5.786 and AudioPosition <= 8.899 {return "Then Ganon came and pressed Warbane into service"}
		else if AudioPosition >= 8.931 and AudioPosition <= 10.520 {return "for his own evil plans."}
		else if AudioPosition >= 10.853 and AudioPosition <= 12.253 {return "The forge was closed."}
		else if AudioPosition >= 12.278 and AudioPosition <= 14.650 {return "Warbane built a fortified retreat of his own"}
		else if AudioPosition >= 14.751 and AudioPosition <= 17.419 {return "somewhere off in the Forest of Canvula to the north."}
		else if AudioPosition >= 17.720 and AudioPosition <= 20.527 {return "We were left with nothing but these trinkets to sell!"}
		else if AudioPosition >= 21.113 and AudioPosition <= 23.747 {return "Perhaps they will be of use to you in the underground."}
		else if AudioPosition >= 23.987 and AudioPosition <= 26.646 {return "I can not give them up cheap."}
		else return ""
		break;
	
	}
}

function Subtitle_GreatWimbich_TownMerchant_KindaTiredToday(AudioPosition)
{
	switch string_lower(Localize.Meta.LanguageNameNative)
	{
	case "english":
		if AudioPosition >= 0.000 and AudioPosition <= 2.595 {return "I'm kinda... tired today."}
		else if AudioPosition >= 2.619 and AudioPosition <= 5.607 {return "Everything's turning to... mud."}
		else return ""
		break;
		
	case "dutch":
		if AudioPosition >= 0.000 and AudioPosition <= 2.595 {return "Ik ben een beetje... moe vandaag."}
		else if AudioPosition >= 2.619 and AudioPosition <= 5.607 {return "Alles lijkt een beetje... modderig."}
		else return ""
		break;
		
	case "french":
		if AudioPosition >= 0.000 and AudioPosition <= 2.595 {return "I'm kinda... tired today."}
		else if AudioPosition >= 2.619 and AudioPosition <= 5.607 {return "Everything's turning to... mud."}
		else return ""
		break;
	}
}
