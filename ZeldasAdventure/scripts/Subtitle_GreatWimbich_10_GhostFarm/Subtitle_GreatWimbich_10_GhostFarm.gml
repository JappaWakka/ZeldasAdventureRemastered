function Subtitle_GreatWimbich_GhostFarmer_StayBack(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <=  1.808 {return Localize.Subtitles.Dialogue.GreatWimbich.GhostFarmer.StayBack.Line01} //"Ghost Farmer: Stay back!"
	else if AudioPosition >= 1.832 and AudioPosition <=  4.106 {return Localize.Subtitles.Dialogue.GreatWimbich.GhostFarmer.StayBack.Line02} //"This splendid farm is all mine."
	else if AudioPosition >= 4.131 and AudioPosition <=  6.044 {return Localize.Subtitles.Dialogue.GreatWimbich.GhostFarmer.StayBack.Line03} //"Isn't it wonderful?"
	else if AudioPosition >= 6.507 and AudioPosition <= 10.453 {return Localize.Subtitles.Dialogue.GreatWimbich.GhostFarmer.StayBack.Line04} //"I have worked this land for three-hundred years."
	else return ""
}

function Subtitle_GreatWimbich_GhostFarmer_StillHere(AudioPosition)
{
	if AudioPosition >=		  0.000 and AudioPosition <=  3.160 {return Localize.Subtitles.Dialogue.GreatWimbich.GhostFarmer.StillHere.Line01} //"No? You're still here?
	else if AudioPosition >=  3.660 and AudioPosition <=  7.127 {return Localize.Subtitles.Dialogue.GreatWimbich.GhostFarmer.StillHere.Line02} //"Alright, I admit it, my farm is in ruins.
	else if AudioPosition >=  7.587 and AudioPosition <= 11.200 {return Localize.Subtitles.Dialogue.GreatWimbich.GhostFarmer.StillHere.Line03} //"Ganon and his cruel friends took all my crops and tools.
	else if AudioPosition >= 11.819 and AudioPosition <= 13.586 {return Localize.Subtitles.Dialogue.GreatWimbich.GhostFarmer.StillHere.Line04} //"You must save us!
	else if AudioPosition >= 14.067 and AudioPosition <= 16.893 {return Localize.Subtitles.Dialogue.GreatWimbich.GhostFarmer.StillHere.Line05} //"Come close, and I'll tell you a secret.
	else return ""
}


function Subtitle_GreatWimbich_GhostFarmer_ShrineOfWater_Classic(AudioPosition) //Ghost Farmhand
{
	if AudioPosition >=		  0.000 and AudioPosition <=  6.173 {return Localize.Subtitles.Dialogue.GreatWimbich.GhostFarmer.ShrineOfWater_Classic.Line01} //"Ghost Farmhand: Far away, one of Ganon's allies lives in a world of water.
	else if AudioPosition >=  6.473 and AudioPosition <=  9.333 {return Localize.Subtitles.Dialogue.GreatWimbich.GhostFarmer.ShrineOfWater_Classic.Line02} //"The entrance is hidden, and you may never find it
	else if AudioPosition >=  9.358 and AudioPosition <= 12.053 {return Localize.Subtitles.Dialogue.GreatWimbich.GhostFarmer.ShrineOfWater_Classic.Line03} //"if you fear the touch of falling water.
	else if AudioPosition >= 13.087 and AudioPosition <= 18.700 {return Localize.Subtitles.Dialogue.GreatWimbich.GhostFarmer.ShrineOfWater_Classic.Line04} //"You can cross any fjord in Skotness River with the Red Boots.
	else return ""
}

function Subtitle_GreatWimbich_GhostFarmer_ShrineOfWater_Remastered(AudioPosition) //Ghost Farmer
{
	if AudioPosition >=		 0.000 and AudioPosition <=  6.173 {return Localize.Subtitles.Dialogue.GreatWimbich.GhostFarmer.ShrineOfWater_Classic.Line01} //"Ghost Farmer: Far away, one of Ganon's allies lives in a world of water.
	else if AudioPosition >= 6.473 and AudioPosition <=  9.333 {return Localize.Subtitles.Dialogue.GreatWimbich.GhostFarmer.ShrineOfWater_Classic.Line02} //"The entrance is hidden, and you may never find it
	else if AudioPosition >= 9.358 and AudioPosition <= 12.053 {return Localize.Subtitles.Dialogue.GreatWimbich.GhostFarmer.ShrineOfWater_Classic.Line03} //"if you fear the touch of falling water.
	else return ""
}