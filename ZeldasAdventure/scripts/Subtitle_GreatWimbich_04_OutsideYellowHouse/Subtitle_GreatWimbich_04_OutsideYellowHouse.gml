//Yvonne
function Subtitle_GreatWimbich_Yvonne_GiveFlute(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 2.393 {return "Yvonne: Hello, Zelda. My name is Yvonne."}
		else if AudioPosition >= 2.527 and AudioPosition <= 4.633 {return "You look like a music lover, too."}
		else if AudioPosition >= 4.700 and AudioPosition <= 7.380 {return "Music can soothe a savage beast."}
		else if AudioPosition >= 7.405 and AudioPosition <= 10.515 {return "I believe Shurmak has graced you with her friendship."}
		else if AudioPosition >= 10.551 and AudioPosition <= 13.465 {return "She helped me once, so I am going to help you."}
		else if AudioPosition >= 13.753 and AudioPosition <= 14.820 {return "Listen to this!"}
		else if AudioPosition >= 15.473 and AudioPosition <= 18.473 {return "*Yvonne plays the Flute*"}
		else if AudioPosition >= 18.498 and AudioPosition <= 24.393 {return "Heh heh! The Flute can be used to calm the savage hiss of a snake."}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 2.393 {return "Yvonne: Hallo, Zelda. Mijn naam is Yvonne."}
		else if AudioPosition >= 2.527 and AudioPosition <= 4.633 {return "Je ziet er uit als een mede-muziekliefhebber."}
		else if AudioPosition >= 4.700 and AudioPosition <= 7.380 {return "Muziek kan zelfs een woest beest kalmeren."}
		else if AudioPosition >= 7.405 and AudioPosition <= 10.515 {return "Ik heb vernomen dat Shurmak je met haar vriendschap heeft vereerd."}
		else if AudioPosition >= 10.551 and AudioPosition <= 13.465 {return "Ze heeft mij ooit geholpen, dus nu zal ik ook jou helpen."}
		else if AudioPosition >= 13.753 and AudioPosition <= 14.820 {return "Luister hier eens naar!"}
		else if AudioPosition >= 15.473 and AudioPosition <= 18.473 {return "*Yvonne bespeelt de Fluit*"}
		else if AudioPosition >= 18.498 and AudioPosition <= 24.393 {return "Hihi! De Fluit kan worden gebruikt om het woeste gesis van een slang te kalmeren."}
		else return ""
		break;
	
	case "fr":
		if AudioPosition >= 0.000 and AudioPosition <= 2.393 {return "Yvonne: Hello, Zelda. My name is Yvonne."}
		else if AudioPosition >= 2.527 and AudioPosition <= 4.633 {return "You look like a music lover, too."}
		else if AudioPosition >= 4.700 and AudioPosition <= 7.380 {return "Music can soothe a savage beast."}
		else if AudioPosition >= 7.405 and AudioPosition <= 10.515 {return "I believe Shurmak has graced you with her friendship."}
		else if AudioPosition >= 10.551 and AudioPosition <= 13.465 {return "She helped me once, so I am going to help you."}
		else if AudioPosition >= 13.753 and AudioPosition <= 14.820 {return "Listen to this!"}
		else if AudioPosition >= 15.473 and AudioPosition <= 18.473 {return "*Yvonne plays the Flute*"}
		else if AudioPosition >= 18.498 and AudioPosition <= 24.393 {return "Heh heh! The Flute can be used to calm the savage hiss of a snake."}
		else return ""
		break;
	}
}

function Subtitle_GreatWimbich_Yvonne_Singing(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 5.421 {return "*Yvonne sings*"}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 5.421 {return "*Yvonne zingt*"}
		else return ""
		break;
		
	case "fr":
		if AudioPosition >= 0.000 and AudioPosition <= 5.421 {return "*Yvonne sings*"}
		else return ""
		break;
	}
}


function Subtitle_GreatWimbich_ErinAndIan_MeetTheTwins(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 3.333 {return "Twins (Eric & Ian): Hello, Zelda. I'm Eric and this is Ian."}
		else if AudioPosition >= 3.800 and AudioPosition <= 7.166 {return "Oh, what do you mean? I'm Eric, I've always been."}
		else if AudioPosition >= 7.260 and AudioPosition <= 9.273 {return "No you're not, I'm Eric!"}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 3.333 {return "Tweeling (Eric & Ian): Hallo, Zelda. Ik ben Eric en dit is Ian."}
		else if AudioPosition >= 3.800 and AudioPosition <= 7.166 {return "Wat bedoel je? Ik ben Eric, dat ben ik altijd geweest."}
		else if AudioPosition >= 7.260 and AudioPosition <= 9.273 {return "Nee, dat ben je niet, ik ben Eric!"}
		else return ""
		break;
		
	case "fr":
		if AudioPosition >= 0.000 and AudioPosition <= 3.333 {return "Twins (Eric & Ian): Hello, Zelda. I'm Eric and this is Ian."}
		else if AudioPosition >= 3.800 and AudioPosition <= 7.166 {return "Oh, what do you mean? I'm Eric, I've always been."}
		else if AudioPosition >= 7.260 and AudioPosition <= 9.273 {return "No you're not, I'm Eric!"}
		else return ""
		break;
	}
}


function Subtitle_GreatWimbich_ErinAndIan_MeetOurFather(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 1.720 {return "Well, never mind who we are."}
		else if AudioPosition >= 1.927 and AudioPosition <= 4.693 {return "You should go into the yellow house and meet our father!"}
		else if AudioPosition >= 4.893 and AudioPosition <= 7.413 {return "He'll tell you something that's good to know."}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 1.720 {return "Ach, het doet er niet toe wie wij zijn. "}
		else if AudioPosition >= 1.927 and AudioPosition <= 4.693 {return "Je zou het gele huis eens moeten bezoeken en onze vader ontmoeten!"}
		else if AudioPosition >= 4.893 and AudioPosition <= 7.413 {return "Hij zal je iets interessants vertellen."}
		else return ""
		break;
		
	case "fr":
		if AudioPosition >= 0.000 and AudioPosition <= 1.720 {return "Well, never mind who we are."}
		else if AudioPosition >= 1.927 and AudioPosition <= 4.693 {return "You should go into the yellow house and meet our father!"}
		else if AudioPosition >= 4.893 and AudioPosition <= 7.413 {return "He'll tell you something that's good to know."}
		else return ""
		break;
	}
}

