
function Subtitle_ShrineOfEarth_08_TreasureChest_WhatDoWeHaveHere(AudioPosition)
{
	switch string_lower(Localize.Meta.LanguageNameNative)
	{
	case "english":
		if AudioPosition >= 0.000 and AudioPosition <= 2.155 {return "Treasure Chest: Oh-ho-ho! Oh, what do we have here?!"}
		if AudioPosition >= 2.180 and AudioPosition <= 3.913 {return "A human person's coming close!"}
		if AudioPosition >= 3.938 and AudioPosition <= 6.215 {return "Why, what a great event! Hoo-hoo!"}
		else return ""
		break;
		
	case "dutch":
		if AudioPosition >= 0.000 and AudioPosition <= 2.155 {return "Schatkist: Oh-ho-ho! Oh, wat hebben we hier?!"}
		if AudioPosition >= 2.180 and AudioPosition <= 3.913 {return "Er komt een menselijk persoon aan!"}
		if AudioPosition >= 3.938 and AudioPosition <= 6.215 {return "Nou, wat een geweldige gebeurtenis! Hoe-hoe!"}
		else return ""
		break;
		
	case "french":
		if AudioPosition >= 0.000 and AudioPosition <= 2.155 {return "Treasure Chest: Oh-ho-ho! Oh, what do we have here?!"}
		if AudioPosition >= 2.180 and AudioPosition <= 3.913 {return "A human person's coming close!"}
		if AudioPosition >= 3.938 and AudioPosition <= 6.215 {return "Why, what a great event! Hoo-hoo!"}
		else return ""
		break;
	}
}