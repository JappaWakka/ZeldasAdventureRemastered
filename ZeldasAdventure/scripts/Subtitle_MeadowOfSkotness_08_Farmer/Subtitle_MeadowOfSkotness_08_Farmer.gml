function Subtitle_MeadowOfSkotness_Farmer_HelloThereMiss(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <=1.686 {return "Farmer: Hello there, Miss!"}
		else if AudioPosition >= 1.807 and AudioPosition <= 3.747 {return "Watch how you go out in the meadows..."}
		else if AudioPosition >= 3.873 and AudioPosition <= 7.000 {return "they're full of Leevers and Tektites this time of year!"}
		else return ""		
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <=1.686 {return "Boer: Hallo daar, jongedame!"}
		else if AudioPosition >= 1.807 and AudioPosition <= 3.747 {return "Pas op als je de weiden in gaat..."}
		else if AudioPosition >= 3.873 and AudioPosition <= 7.000 {return "ze zitten vol met Leevers en Tektites rond deze tijd van het jaar!"}
		else return ""		
		break;
	}
}

function Subtitle_MeadowOfSkotness_Farmer_WhatBringsYouThisWay(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <=1.413 {return "Farmer: It's good to see ya!"}
		else if AudioPosition >= 1.880 and AudioPosition <= 3.480 {return "What brings you this way?"}
		else if AudioPosition >= 3.933 and AudioPosition <= 6.367 {return "'scuse me, but I got to get back to plowin'."}
		else return ""		
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <=1.413 {return "Boer: Leuk je te zien!"}
		else if AudioPosition >= 1.880 and AudioPosition <= 3.480 {return "Van waar ben je hier gekomen?"}
		else if AudioPosition >= 3.933 and AudioPosition <= 6.367 {return "Sorry, maar ik moet weer verder met ploegen."}
		else return ""		
		break;
	}
}




