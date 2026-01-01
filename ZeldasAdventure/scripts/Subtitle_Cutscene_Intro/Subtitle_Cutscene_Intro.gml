function Subtitle_Cutscene_Intro(VideoPosition)
{
	if string_lower(Localize.Meta.LanguageNameNative) = "dutch"
	{
		if VideoPosition >= 37.361 and VideoPosition <= 39.505		  {return Localize.Subtitles.Cutscenes.Intro.Line01} //"Gaspra: Er komt van sterrenkijken niets meer vannacht."
		else if VideoPosition >= 56.667 and VideoPosition <= 59.756	  {return Localize.Subtitles.Cutscenes.Intro.Line02} //"Ah, de Rol van Shurmak..."
		else if VideoPosition >= 59.781 and VideoPosition <= 62.485	  {return Localize.Subtitles.Cutscenes.Intro.Line03} //"brenger van droevig nieuws al die jaren geleden."
		else if VideoPosition >= 65.156 and VideoPosition <= 67.412	  {return Localize.Subtitles.Cutscenes.Intro.Line04} //"En zo gebeurde het dat Ganon..."
		else if VideoPosition >= 67.436 and VideoPosition <= 70.599	  {return Localize.Subtitles.Cutscenes.Intro.Line05} //"Heer van de Duisternis, erin slaagde Tolemac over te nemen."
		else if VideoPosition >= 70.885 and VideoPosition <= 75.130	  {return Localize.Subtitles.Cutscenes.Intro.Line06} //"Hij stal de kostbare Hemelse Tekens en nam Link gevangen!"
		else if VideoPosition >= 75.857 and VideoPosition <= 78.456	  {return Localize.Subtitles.Cutscenes.Intro.Line07} //"Er zou een moedige krijger gevonden moeten worden"
		else if VideoPosition >= 78.487 and VideoPosition <= 80.971	  {return Localize.Subtitles.Cutscenes.Intro.Line08} //"om de strijd aan te gaan met dat kwaadaardige monster."
		else if VideoPosition >= 94.425 and VideoPosition <= 98.958	  {return Localize.Subtitles.Cutscenes.Intro.Line09} //"En zo vond ik deze kampioen van kracht en moed."
		else if VideoPosition >= 99.197 and VideoPosition <= 104.934  {return Localize.Subtitles.Cutscenes.Intro.Line10} //"U bent het, prinses Zelda. Met deze magische ketting, ga voort..."
		else if VideoPosition >= 104.959 and VideoPosition <= 109.320 {return Localize.Subtitles.Cutscenes.Intro.Line11} //"en met elk Teken dat u vindt zult u ook meer kennis opdoen."
		else if VideoPosition >= 109.834 and VideoPosition <= 113.337 {return Localize.Subtitles.Cutscenes.Intro.Line12} //"Vind uw magische toverstaf, gebruik hem verstandig"
		else if VideoPosition >= 113.362 and VideoPosition <= 116.300 {return Localize.Subtitles.Cutscenes.Intro.Line13} //"en luister naar de bondgenoten die u tegenkomt tijdens uw reis."
		else if VideoPosition >= 116.814 and VideoPosition <= 123.070 {return Localize.Subtitles.Cutscenes.Intro.Line14} //"Ga nu, mijn prinses. Haal de Hemelse Tekens terug en red Link."
		else return ""
	}
	else
	{
		if VideoPosition >= 37.361 and VideoPosition <= 39.505			{return Localize.Subtitles.Cutscenes.Intro.Line01} //"Gaspra: There'll be no more viewing tonight."
		else if VideoPosition >= 56.667 and VideoPosition <= 59.756		{return Localize.Subtitles.Cutscenes.Intro.Line02} //"Ah, the Scroll of Shurmak..."
		else if VideoPosition >= 59.781 and VideoPosition <= 62.485		{return Localize.Subtitles.Cutscenes.Intro.Line03} //"bearer of sad news these many years ago."
		else if VideoPosition >= 65.156 and VideoPosition <= 70.599		{return Localize.Subtitles.Cutscenes.Intro.Line04} //"And so it was that Ganon, Lord of Darkness, had taken over Tolemac."
		else if VideoPosition >= 70.885 and VideoPosition <= 75.130		{return Localize.Subtitles.Cutscenes.Intro.Line05} //"He had stolen the treasured Celestial Signs and captured Link!"
		else if VideoPosition >= 75.857 and VideoPosition <= 80.911		{return Localize.Subtitles.Cutscenes.Intro.Line06} //"A brave warrior would have to be found to face this evil monster."
		else if VideoPosition >= 94.425 and VideoPosition <= 98.958		{return Localize.Subtitles.Cutscenes.Intro.Line07} //"And so I found this champion of strength and courage."
		else if VideoPosition >= 99.197 and VideoPosition <= 104.934	{return Localize.Subtitles.Cutscenes.Intro.Line08} //"It is you, Princess Zelda! With this magic pendant, go forth..."
		else if VideoPosition >= 104.959 and VideoPosition <= 109.320	{return Localize.Subtitles.Cutscenes.Intro.Line09} //"and with each Sign you gather, so too will you gain knowledge."
		else if VideoPosition >= 109.834 and VideoPosition <= 111.716	{return Localize.Subtitles.Cutscenes.Intro.Line10} //"Find your magic wand."
		else if VideoPosition >= 112.081 and VideoPosition <= 116.300	{return Localize.Subtitles.Cutscenes.Intro.Line11} //"Use it wisely and listen to your allies along the way!"
		else if VideoPosition >= 116.814 and VideoPosition <= 123.070	{return Localize.Subtitles.Cutscenes.Intro.Line12} //"Go now, my Princess. Restore the Celestial Signs and rescue Link!"
		else return ""
	}
}