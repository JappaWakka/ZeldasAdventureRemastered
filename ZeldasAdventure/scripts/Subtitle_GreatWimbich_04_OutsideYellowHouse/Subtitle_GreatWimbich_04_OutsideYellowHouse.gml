//Yvonne
function Subtitle_GreatWimbich_Yvonne_Giveflute(AudioPosition)
{
	if AudioPosition >=		  0.000 and AudioPosition <=  2.393 {return Localize.Subtitles.Dialogue.GreatWimbich.Yvonne.GiveFlute.Line01} //"Yvonne: Hello, Zelda. My name is Yvonne."
	else if AudioPosition >=  2.527 and AudioPosition <=  4.633 {return Localize.Subtitles.Dialogue.GreatWimbich.Yvonne.GiveFlute.Line02} //"You look like a music lover, too."
	else if AudioPosition >=  4.700 and AudioPosition <=  7.380 {return Localize.Subtitles.Dialogue.GreatWimbich.Yvonne.GiveFlute.Line03} //"Music can soothe a savage beast."
	else if AudioPosition >=  7.405 and AudioPosition <= 10.515 {return Localize.Subtitles.Dialogue.GreatWimbich.Yvonne.GiveFlute.Line04} //"I believe Shurmak has graced you with her friendship."
	else if AudioPosition >= 10.551 and AudioPosition <= 13.465 {return Localize.Subtitles.Dialogue.GreatWimbich.Yvonne.GiveFlute.Line05} //"She helped me once, so I am going to help you."
	else if AudioPosition >= 13.753 and AudioPosition <= 14.820 {return Localize.Subtitles.Dialogue.GreatWimbich.Yvonne.GiveFlute.Line06} //"Listen to this!"
	else if AudioPosition >= 15.473 and AudioPosition <= 18.473 {return Localize.Subtitles.Dialogue.GreatWimbich.Yvonne.GiveFlute.Line07} //"*Yvonne plays the flute*"
	else if AudioPosition >= 18.498 and AudioPosition <= 24.393 {return Localize.Subtitles.Dialogue.GreatWimbich.Yvonne.GiveFlute.Line08} //"Heh heh! The flute can be used to calm the savage hiss of a snake."
	else return ""
}

function Subtitle_GreatWimbich_Yvonne_Singing(AudioPosition)
{
	if AudioPosition >= 0.000 and AudioPosition <= 5.421 {return Localize.Subtitles.Dialogue.GreatWimbich.Yvonne.Singing.Line01} //"*Yvonne sings*"
	else return ""
}


function Subtitle_GreatWimbich_ErinAndIan_MeetTheTwins(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 3.333 {return Localize.Subtitles.Dialogue.GreatWimbich.EricAndIan.MeetTheTwins.Line01} //"Twins (Eric & Ian): Hello, Zelda. I'm Eric and this is Ian."
	else if AudioPosition >= 3.800 and AudioPosition <= 7.166 {return Localize.Subtitles.Dialogue.GreatWimbich.EricAndIan.MeetTheTwins.Line02} //"Oh, what do you mean? I'm Eric, I've always been."
	else if AudioPosition >= 7.260 and AudioPosition <= 9.273 {return Localize.Subtitles.Dialogue.GreatWimbich.EricAndIan.MeetTheTwins.Line03} //"No you're not, I'm Eric!"
	else return ""
}


function Subtitle_GreatWimbich_ErinAndIan_MeetOurFather(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 1.720 {return Localize.Subtitles.Dialogue.GreatWimbich.EricAndIan.MeetOurFather.Line01} //"Well, never mind who we are."
	else if AudioPosition >= 1.927 and AudioPosition <= 4.693 {return Localize.Subtitles.Dialogue.GreatWimbich.EricAndIan.MeetOurFather.Line02} //"You should go into the yellow house and meet our father!"
	else if AudioPosition >= 4.893 and AudioPosition <= 7.413 {return Localize.Subtitles.Dialogue.GreatWimbich.EricAndIan.MeetOurFather.Line03} //"He'll tell you something that's good to know."
	else return ""
}

