function Subtitle_MeadowOfSkotness_Farmer_HelloThereMiss(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 1.686 {return Localize.Subtitles.Dialogue.MeadowOfSkotness.Farmer.HelloThereMiss.Line01} //"Farmer: Hello there, Miss!"
	else if AudioPosition >= 1.807 and AudioPosition <= 3.747 {return Localize.Subtitles.Dialogue.MeadowOfSkotness.Farmer.HelloThereMiss.Line02} //"Watch how you go out in the meadows!"
	else if AudioPosition >= 3.873 and AudioPosition <= 7.000 {return Localize.Subtitles.Dialogue.MeadowOfSkotness.Farmer.HelloThereMiss.Line03} //"They're full of Leevers and Tektites this time of year!"
	else return ""
}

function Subtitle_MeadowOfSkotness_Farmer_WhatBringsYouThisWay(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 1.413 {return Localize.Subtitles.Dialogue.MeadowOfSkotness.Farmer.WhatBringsYouThisWay.Line01} //"Farmer: It's good to see ya!"
	else if AudioPosition >= 1.880 and AudioPosition <= 3.480 {return Localize.Subtitles.Dialogue.MeadowOfSkotness.Farmer.WhatBringsYouThisWay.Line02} //"What brings you this way?"
	else if AudioPosition >= 3.933 and AudioPosition <= 6.367 {return Localize.Subtitles.Dialogue.MeadowOfSkotness.Farmer.WhatBringsYouThisWay.Line03} //"'scuse me, but I got to get back to plowin'."
	else return ""
}