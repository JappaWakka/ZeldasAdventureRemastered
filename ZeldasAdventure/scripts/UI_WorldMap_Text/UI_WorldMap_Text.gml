function UI_WorldMap_Text(TextIndex)
{
	switch global.CurrentLanguage
	{
	case "en":
		if TextIndex = 0 {return "Tolemac"}
		else if TextIndex = 1 {return "Shrine of Earth"}
		else if TextIndex = 2 {return "Shrine of Illusion"}
		else if TextIndex = 3 {return "Shrine of Air"}
		else if TextIndex = 4 {return "Shrine of Destiny"}
		else if TextIndex = 5 {return "Shrine of Water"}
		else if TextIndex = 6 {return "Shrine of Strength"}
		else if TextIndex = 7 {return "Shrine of Fire"}
		else if TextIndex = 8 {return "Ganon's Gauntlet"}
		break;
		
	case "nl":
		if TextIndex = 0 {return "Tolemac"}
		else if TextIndex = 1 {return "Aarde Tempel"}
		else if TextIndex = 2 {return "Illusie Tempel"}
		else if TextIndex = 3 {return "Lucht Tempel"}
		else if TextIndex = 4 {return "Levenslot Tempel"}
		else if TextIndex = 5 {return "Water Tempel"}
		else if TextIndex = 6 {return "Kracht Tempel"}
		else if TextIndex = 7 {return "Vuurtempel"}
		else if TextIndex = 8 {return "Ganon's Uitdaging"}
		break;
		
	case "fr":
		if TextIndex = 0 {return "Tolemac"}
		else if TextIndex = 1 {return "Temple de la Terre"}
		else if TextIndex = 2 {return "Temple de l’Illusion"}
		else if TextIndex = 3 {return "Temple de l’Air"}
		else if TextIndex = 4 {return "Temple du Destin"}
		else if TextIndex = 5 {return "Temple de l’Eau"}
		else if TextIndex = 6 {return "Temple de la Force"}
		else if TextIndex = 7 {return "Temple du Feu"}
		else if TextIndex = 8 {return "Gantelet de Ganon"}
		break;
	}
}