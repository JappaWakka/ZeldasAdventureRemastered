function Subtitle_GreatWimbich_TwinFather_WelcomeToMyHome(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <=2.349 {return "Twins' Father: Hello, Zelda! Welcome to my home!"}
		else if AudioPosition >= 2.374 and AudioPosition <= 6.282 {return "I'm the twins' father, and even I don't know which twin is which."}
		else if AudioPosition >= 6.774 and AudioPosition <= 9.100 {return "Still, it is good of you to come and visit."}
		else if AudioPosition >= 9.125 and AudioPosition <= 11.282 {return "My name is Zelda and you must be the father."}
		else if AudioPosition >= 11.307 and AudioPosition <= 14.506 {return "No, wait! That can't be true, you just came in."}
		else if AudioPosition >= 14.531 and AudioPosition <= 16.039 {return "You must be Zelda!"}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <=2.349 {return "Vader van de Tweeling: Hallo, Zelda! Welkom in mijn huis."}
		else if AudioPosition >= 2.374 and AudioPosition <= 6.282 {return "Ik ben de vader van de tweeling, en zelfs ik weet niet welke tweeling welke is."}
		else if AudioPosition >= 6.774 and AudioPosition <= 9.100 {return "Maar het is leuk dat je langskomt."}
		else if AudioPosition >= 9.125 and AudioPosition <= 11.282 {return "Mijn naam is Zelda en jij bent vast de vader."}
		else if AudioPosition >= 11.307 and AudioPosition <= 14.506 {return "Nee, wacht! Dat kan niet kloppen, je bent net binnengekomen."}
		else if AudioPosition >= 14.531 and AudioPosition <= 16.039 {return "Jij bent vast Zelda!"}
		else return ""
		break;
	}
}

function Subtitle_GreatWimbich_TwinFather_CoalAndRubies(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <=2.460 {return "I do know this for sure, because I used to be"}
		else if AudioPosition >= 2.485 and AudioPosition <= 4.841 {return "a miner over on the Plain of Hobel:"}
		else if AudioPosition >= 4.866 and AudioPosition <= 7.746 {return "Coal and Rubies are the same substance."}
		else if AudioPosition >= 7.888 and AudioPosition <= 10.429 {return "I believe there's a crusher somewhere nearby."}
		else if AudioPosition >= 10.468 and AudioPosition <= 13.976 {return "Uh, go in peace, little one. Uh... are you Eric or Ian?"}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <=2.460 {return "Ik weet dit zeker, want ik was vroeger"}
		else if AudioPosition >= 2.485 and AudioPosition <= 4.841 {return "mijnwerker op de Vlakte van Hobel:"}
		else if AudioPosition >= 4.866 and AudioPosition <= 7.746 {return "Steenkool en Robijnen zijn dezelfde substantie."}
		else if AudioPosition >= 7.888 and AudioPosition <= 10.429 {return "Ik geloof dat er ergens in de buurt een breker is."}
		else if AudioPosition >= 10.468 and AudioPosition <= 13.976 {return "Eh, ga in vrede, kleintje. Eh... ben je Eric of Ian?"}
		else return ""
		break;
	}
}


function Subtitle_GreatWimbich_TwinFather_VaguelyFamiliar(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 2.730 {return "Twins' Father: You seem... vaguely familiar, but, um..."}
		else if AudioPosition >= 2.755 and AudioPosition <= 4.286 {return "i-it's really time for my nap."}
		else if AudioPosition >= 4.611 and AudioPosition <= 6.635 {return "Are you Eric or- or Ian?"}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 2.730 {return "Vader van de Tweeling: Je komt me vaag bekend voor, maar eh..."}
		else if AudioPosition >= 2.755 and AudioPosition <= 4.286 {return "het is echt tijd voor mijn dutje."}
		else if AudioPosition >= 4.611 and AudioPosition <= 6.635 {return "Ben je Eric of Ian?"}
		else return ""
		break;
	}
}
