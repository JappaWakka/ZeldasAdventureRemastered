function Subtitle_GreatWimbich_GhostFarmer_StayBack(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 1.808 {return "Ghost Farmer: Stay back!"}
		else if AudioPosition >= 1.832 and AudioPosition <= 4.106 {return "This splendid farm is all mine."}
		else if AudioPosition >= 4.131 and AudioPosition <= 6.044 {return "Isn't it wonderful?"}
		else if AudioPosition >= 6.507 and AudioPosition <= 10.453 {return "I have worked this land for three-hundred years."}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 1.808 {return "Spookboer: Blijf daar!"}
		else if AudioPosition >= 1.832 and AudioPosition <= 4.106 {return "Deze schitterende boerderij is helemaal van mij."}
		else if AudioPosition >= 4.131 and AudioPosition <= 6.044 {return "Is het niet prachtig?"}
		else if AudioPosition >= 6.507 and AudioPosition <= 10.453 {return "Ik bewerk dit land al driehonderd jaar."}
		else return ""
		break;
	}
}

function Subtitle_GreatWimbich_GhostFarmer_StillHere(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 3.160 {return "No? You're still here?"}
		else if AudioPosition >= 3.660 and AudioPosition <= 7.127 {return "Alright, I admit it, my farm is in ruins."}
		else if AudioPosition >= 7.587 and AudioPosition <= 11.200 {return "Ganon and his cruel friends took all my crops and tools."}
		else if AudioPosition >= 11.819 and AudioPosition <= 13.586 {return "You must save us!"}
		else if AudioPosition >= 14.067 and AudioPosition <= 16.893 {return "Come close, and I'll tell you a secret."}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 3.160 {return "Nee? Ben je er nog steeds?"}
		else if AudioPosition >= 3.660 and AudioPosition <= 7.127 {return "Oké, ik geef het toe, mijn boerderij is een puinhoop."}
		else if AudioPosition >= 7.587 and AudioPosition <= 11.200 {return "Ganon en zijn wrede vrienden hebben al mijn gewassen en gereedschap meegenomen."}
		else if AudioPosition >= 11.819 and AudioPosition <= 13.586 {return "Je moet ons redden!"}
		else if AudioPosition >= 14.067 and AudioPosition <= 16.893 {return "Kom dichterbij, dan vertel ik je een geheim."}
		else return ""
		break;
	}
}


function Subtitle_GreatWimbich_GhostFarmer_WaterShrine_Classic(AudioPosition) //Ghost Farmhand
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 6.173 {return "Ghost Farmhand: Far away, one of Ganon's allies lives in a world of water."}
		else if AudioPosition >= 6.473 and AudioPosition <= 9.333 {return "The entrance is hidden, and you may never find it"}
		else if AudioPosition >= 9.358 and AudioPosition <= 12.053 {return "if you fear the touch of falling water."}
		else if AudioPosition >= 13.087 and AudioPosition <= 18.700 {return "You can cross any fjord in Skotness River with the Red Boots."}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 6.173 {return "Spookknecht: Hier ver vandaan leeft een bondgenoot van Ganon in een wereld van water."}
		else if AudioPosition >= 6.473 and AudioPosition <= 9.333 {return "De ingang is verborgen en je zult hem nooit vinden"}
		else if AudioPosition >= 9.358 and AudioPosition <= 12.053 {return "als je bang bent voor stromend water."}
		else if AudioPosition >= 13.087 and AudioPosition <= 18.700 {return "Met de rode laarzen kun je elke fjord in de Skotnessrivier oversteken."}
		else return ""
		break;
	}
}

function Subtitle_GreatWimbich_GhostFarmer_WaterShrine_Remastered(AudioPosition) //Ghost Farmer
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 6.173 {return "Ghost Farmer: Far away, one of Ganon's allies lives in a world of water."}
		else if AudioPosition >= 6.473 and AudioPosition <= 9.333 {return "The entrance is hidden, and you may never find it"}
		else if AudioPosition >= 9.358 and AudioPosition <= 12.053 {return "if you fear the touch of falling water."}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 6.173 {return "Spookboer: Hier ver vandaan leeft een bondgenoot van Ganon in een wereld van water."}
		else if AudioPosition >= 6.473 and AudioPosition <= 9.333 {return "De ingang is verborgen en je zult hem nooit vinden"}
		else if AudioPosition >= 9.358 and AudioPosition <= 12.053 {return "als je bang bent voor stromend water."}
		else return ""
		break;
	}
}