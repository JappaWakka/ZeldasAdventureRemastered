//Shopkeeper
function Subtitle_GreatWimbich_Smithy_WhoGoesThere(AudioPosition)
{
	if AudioPosition >=		  0.000 and AudioPosition <=  2.187 {return Localize.Subtitles.Dialogue.GreatWimbich.Smithy.WhoGoesThere.Line01}
	else if AudioPosition >=  2.212 and AudioPosition <=  3.640 {return Localize.Subtitles.Dialogue.GreatWimbich.Smithy.WhoGoesThere.Line02}
	else if AudioPosition >=  3.665 and AudioPosition <=  6.473 {return Localize.Subtitles.Dialogue.GreatWimbich.Smithy.WhoGoesThere.Line03}
	else if AudioPosition >=  7.180 and AudioPosition <=  8.753 {return Localize.Subtitles.Dialogue.GreatWimbich.Smithy.WhoGoesThere.Line04}
	else if AudioPosition >=  8.927 and AudioPosition <= 11.486 {return Localize.Subtitles.Dialogue.GreatWimbich.Smithy.WhoGoesThere.Line05}
	else if AudioPosition >= 11.511 and AudioPosition <= 13.620 {return Localize.Subtitles.Dialogue.GreatWimbich.Smithy.WhoGoesThere.Line06}
	else if AudioPosition >= 13.646 and AudioPosition <= 15.647 {return Localize.Subtitles.Dialogue.GreatWimbich.Smithy.WhoGoesThere.Line07}
	else return ""
}

function Subtitle_GreatWimbich_Smithy_ChooseItemAndHurry(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 2.906 {return Localize.Subtitles.Dialogue.GreatWimbich.Smithy.ChooseItemAndHurry.Line01}
	else return ""
}

function Subtitle_GreatWimbich_Smithy_CongratsOnFindingCoal(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 3.675 {return Localize.Subtitles.Dialogue.GreatWimbich.Smithy.CongratsOnFindingCoal.Line01}
	else if AudioPosition >= 3.700 and AudioPosition <= 6.246 {return Localize.Subtitles.Dialogue.GreatWimbich.Smithy.CongratsOnFindingCoal.Line02}
	else if AudioPosition >= 6.271 and AudioPosition <= 8.660 {return Localize.Subtitles.Dialogue.GreatWimbich.Smithy.CongratsOnFindingCoal.Line03}
	else return ""
}
