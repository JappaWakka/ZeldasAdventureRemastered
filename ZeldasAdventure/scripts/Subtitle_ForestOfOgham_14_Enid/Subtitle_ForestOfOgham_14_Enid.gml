
function Subtitle_ForestOfOgham_14_Enid_ComeClose(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 5.005 {return "Enid: Come close, Princess! I'll tell you a great secret!"}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 5.005 {return "Enid: Kom dichterbij, Prinses! Dan vertel ik u een groot geheim!"}
		else return ""
		break;
		
	case "fr":
		if AudioPosition >= 0.000 and AudioPosition <= 5.005 {return "Enid: Come close, Princess! I'll tell you a great secret!"}
		else return ""
		break;
	}
}
function Subtitle_ForestOfOgham_14_Enid_TrustNoOneWithHair(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 5.773 {return "Enid: Hear me whisper: Trust no one with hair! Huh huh huh!"}
		else if AudioPosition >= 5.813 and AudioPosition <= 10.033 {return "Don't even trust me! Hah hah!"}
		else if AudioPosition >= 10.123 and AudioPosition <= 15.303 {return "I've stolen one of your lives! Hee hee hee hee hee!"}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 5.773 {return "Enid: Hoor mij fluisteren: Vertrouw niemand met haar! Huh-huh-huh!"}
		else if AudioPosition >= 5.813 and AudioPosition <= 10.033 {return "Vertrouw zelfs mij niet! Ha-haa!"}
		else if AudioPosition >= 10.123 and AudioPosition <= 15.303 {return "Ik heb een van uw levens gestolen! Hi-hi-hi-hi-hi!"}
		else return ""
		break;
	
	case "fr":
		if AudioPosition >= 0.000 and AudioPosition <= 5.773 {return "Enid: Hear me whisper: Trust no one with hair! Huh huh huh!"}
		else if AudioPosition >= 5.813 and AudioPosition <= 10.033 {return "Don't even trust me! Hah hah!"}
		else if AudioPosition >= 10.123 and AudioPosition <= 15.303 {return "I've stolen one of your lives! Hee hee hee hee hee!"}
		else return ""
		break;
	}
}
function Subtitle_ForestOfOgham_14_Enid_TooClever(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 4.700 {return "Enid: Aaaaaaah, you're too clever for Enid!"}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 4.700 {return "Enid: Aaaaaaah, u bent te slim voor Enid!"}
		else return ""
		break;
		
	case "fr":
		if AudioPosition >= 0.000 and AudioPosition <= 4.700 {return "Enid: Aaaaaaah, you're too clever for Enid!"}
		else return ""
		break;
	}
}
function Subtitle_ForestOfOgham_14_Enid_GoAway(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 3.793 {return "Enid: Go away! I have nothing for you."}
		if AudioPosition >= 3.818 and AudioPosition <= 5.893 {return "I have nothing to say to you."}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 3.793 {return "Enid: Ga weg! Ik heb niets voor u."}
		if AudioPosition >= 3.818 and AudioPosition <= 5.893 {return "Ik heb u niets te zeggen."}
		else return ""
		break;
		
	case "fr":
		if AudioPosition >= 0.000 and AudioPosition <= 3.793 {return "Enid: Go away! I have nothing for you."}
		if AudioPosition >= 3.818 and AudioPosition <= 5.893 {return "I have nothing to say to you."}
		else return ""
		break;
	}
}