function Subtitle_ShrineOfEarth_08_TreasureChest_WhatDoWeHaveHere(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 2.155 {return Localize.Subtitles.Dialogue.ShrineOfEarth.TreasureChest.WhatDoWeHaveHere.Line01} //"Treasure Chest: Oh-ho-ho! Oh, what do we have here?!"
	else if AudioPosition >= 2.180 and AudioPosition <= 3.913 {return Localize.Subtitles.Dialogue.ShrineOfEarth.TreasureChest.WhatDoWeHaveHere.Line02} //"A human person's coming close!"
	else if AudioPosition >= 3.938 and AudioPosition <= 6.215 {return Localize.Subtitles.Dialogue.ShrineOfEarth.TreasureChest.WhatDoWeHaveHere.Line03} //"Why, what a great event! Hoo-hoo!"
	else return ""
}
