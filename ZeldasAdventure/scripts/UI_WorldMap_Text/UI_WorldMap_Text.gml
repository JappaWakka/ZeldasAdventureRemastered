function UI_WorldMap_Title_Text(TextIndex)
{
	
	if TextIndex = 0	  {return Localize.UI.MapMenu.LocationTitles.Tolemac} //"Tolemac"
	else if TextIndex = 1 {return Localize.UI.MapMenu.LocationTitles.ShrineOfEarth} //"Shrine of Earth"
	else if TextIndex = 2 {return Localize.UI.MapMenu.LocationTitles.ShrineOfIllusion} //"Shrine of Illusion"
	else if TextIndex = 3 {return Localize.UI.MapMenu.LocationTitles.ShrineOfAir} //"Shrine of Air"
	else if TextIndex = 4 {return Localize.UI.MapMenu.LocationTitles.ShrineOfDestiny} //"Shrine of Destiny"
	else if TextIndex = 5 {return Localize.UI.MapMenu.LocationTitles.ShrineOfWater} //"Shrine of Water"
	else if TextIndex = 6 {return Localize.UI.MapMenu.LocationTitles.ShrineOfStrength} //"Shrine of Strength"
	else if TextIndex = 7 {return Localize.UI.MapMenu.LocationTitles.ShrineOfFire} //"Shrine of Fire"
	else if TextIndex = 8 {return Localize.UI.MapMenu.LocationTitles.GanonsGauntlet} //"Ganon's Gauntlet"
	
}

function UI_WorldMap_Compass_Text(Direction)
{

	if Direction = global.Directions.North		{return Localize.UI.MapMenu.CompassDirections.North} //"N"
	else if Direction = global.Directions.West	{return Localize.UI.MapMenu.CompassDirections.West} //"W"
	else if Direction = global.Directions.East	{return Localize.UI.MapMenu.CompassDirections.East} //"E"
	else if Direction = global.Directions.South {return Localize.UI.MapMenu.CompassDirections.South} //"S"
		
}