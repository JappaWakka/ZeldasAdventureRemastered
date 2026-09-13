function Subtitle_UbatoHills_Ethera_WhatFoolishHumanComesThisWay(AudioPosition)
{
	if AudioPosition >=		  0.000 and AudioPosition <=  2.900 {return Localize.Subtitles.Dialogue.UbatoHills.Ethera.WhatFoolishHumanComesThisWay.Line01}
	else if AudioPosition >=  3.680 and AudioPosition <=  6.433 {return Localize.Subtitles.Dialogue.UbatoHills.Ethera.WhatFoolishHumanComesThisWay.Line02}
	else if AudioPosition >=  7.559 and AudioPosition <=  8.733 {return Localize.Subtitles.Dialogue.UbatoHills.Ethera.WhatFoolishHumanComesThisWay.Line03}
	else return ""
}

function Subtitle_UbatoHills_Ethera_BegoneLittleCreature(AudioPosition)
{
	if AudioPosition >= 0.000 and AudioPosition <= 1.693 {return Localize.Subtitles.Dialogue.UbatoHills.Ethera.BegoneLittleCreature.Line01}
	else return ""
}
