function Subtitle_GreatWimbich_TwinFather_WelcomeToMyHome(AudioPosition)
{
	if AudioPosition >=		  0.000 and AudioPosition <=  2.349 {return Localize.Subtitles.Dialogue.GreatWimbich.TwinFather.WelcomeToMyHome.Line01} //"Twins' Father: Hello, Zelda! Welcome to my home!"}
	else if AudioPosition >=  2.374 and AudioPosition <=  6.282 {return Localize.Subtitles.Dialogue.GreatWimbich.TwinFather.WelcomeToMyHome.Line02} //"I'm the twins' father, and even I don't know which twin is which."}
	else if AudioPosition >=  6.774 and AudioPosition <=  9.100 {return Localize.Subtitles.Dialogue.GreatWimbich.TwinFather.WelcomeToMyHome.Line03} //"Still, it is good of you to come and visit."}
	else if AudioPosition >=  9.125 and AudioPosition <= 11.282 {return Localize.Subtitles.Dialogue.GreatWimbich.TwinFather.WelcomeToMyHome.Line04} //"My name is Zelda and you must be the father."}
	else if AudioPosition >= 11.307 and AudioPosition <= 14.506 {return Localize.Subtitles.Dialogue.GreatWimbich.TwinFather.WelcomeToMyHome.Line05} //"No, wait! That can't be true, you just came in."}
	else if AudioPosition >= 14.531 and AudioPosition <= 16.039 {return Localize.Subtitles.Dialogue.GreatWimbich.TwinFather.WelcomeToMyHome.Line06} //"You must be Zelda!"}
	else return ""
}

function Subtitle_GreatWimbich_TwinFather_CoalAndRubies(AudioPosition)
{
	if AudioPosition >=		  0.000 and AudioPosition <=  2.460 {return Localize.Subtitles.Dialogue.GreatWimbich.TwinFather.CoalAndRubies.Line01} //"I do know this for sure, because I used to be"}
	else if AudioPosition >=  2.485 and AudioPosition <=  4.841 {return Localize.Subtitles.Dialogue.GreatWimbich.TwinFather.CoalAndRubies.Line02} //"a miner over on the Plain of Hobel:"}
	else if AudioPosition >=  4.866 and AudioPosition <=  7.746 {return Localize.Subtitles.Dialogue.GreatWimbich.TwinFather.CoalAndRubies.Line03} //"Coal and rubies are the same substance."}
	else if AudioPosition >=  7.888 and AudioPosition <= 10.429 {return Localize.Subtitles.Dialogue.GreatWimbich.TwinFather.CoalAndRubies.Line04} //"I believe there's a crusher somewhere nearby."}
	else if AudioPosition >= 10.468 and AudioPosition <= 13.976 {return Localize.Subtitles.Dialogue.GreatWimbich.TwinFather.CoalAndRubies.Line05} //"Uh, go in peace, little one. Uh... are you Eric or Ian?"}
	else return ""
}


function Subtitle_GreatWimbich_TwinFather_VaguelyFamiliar(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 2.730 {return Localize.Subtitles.Dialogue.GreatWimbich.TwinFather.VaguelyFamiliar.Line01} //"Twins' Father: You seem... vaguely familiar, but, um..."}
	else if AudioPosition >= 2.755 and AudioPosition <= 4.286 {return Localize.Subtitles.Dialogue.GreatWimbich.TwinFather.VaguelyFamiliar.Line02} //"i-it's really time for my nap."}
	else if AudioPosition >= 4.611 and AudioPosition <= 6.635 {return Localize.Subtitles.Dialogue.GreatWimbich.TwinFather.VaguelyFamiliar.Line03} //"Are you Eric or- or Ian?"}
	else return ""
}