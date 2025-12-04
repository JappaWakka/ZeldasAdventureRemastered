function Subtitle_VisionHenge_04_Shurmak_Introduction(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 1.787 {return "Shurmak: I am Shurmak, your guide."}
		else if AudioPosition >= 2.113 and AudioPosition <= 4.386 {return "I have known you since you were a child."}
		else if AudioPosition >= 4.607 and AudioPosition <= 6.473 {return "You were given a difficult challenge."}
		else if AudioPosition >= 6.840 and AudioPosition <= 9.660 {return "You will have to go far and overcome great danger."}
		else if AudioPosition >= 9.860 and AudioPosition <= 13.893 {return "Stay calm and use your knowledge and strength to defeat your enemies."}
		else if AudioPosition >= 14.335 and AudioPosition <= 17.368 {return "Remember what you learn along the way, and persevere."}
		else if AudioPosition >= 17.889 and AudioPosition <= 20.709 {return "Go now to the one who has a bed but never sleeps"}
		else if AudioPosition >= 21.033 and AudioPosition <= 23.453 {return "where by its side the red willow weeps"}
		else if AudioPosition >= 23.680 and AudioPosition <= 26.066 {return "and to its mouth that never speaks."}
		else return ""
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 1.787 {return "Shurmak: Ik ben Shurmak, jouw gids."}
		else if AudioPosition >= 2.113 and AudioPosition <= 4.386 {return "Ik ken je al sinds je nog maar een kind was."}
		else if AudioPosition >= 4.607 and AudioPosition <= 6.473 {return "Je hebt een moeilijke taak gekregen."}
		else if AudioPosition >= 6.840 and AudioPosition <= 9.660 {return "Je zult ver moeten reizen en grote gevaren moeten trotseren."}
		else if AudioPosition >= 9.860 and AudioPosition <= 13.893 {return "Blijf kalm en gebruik je kennis en kracht om je vijanden te verslaan."}
		else if AudioPosition >= 14.335 and AudioPosition <= 17.368 {return "Onthoud wat je leert tijdens je reis en geef niet op."}
		else if AudioPosition >= 17.889 and AudioPosition <= 20.709 {return "Ga nu naar degene die een bed heeft, maar nooit slaapt"}
		else if AudioPosition >= 21.033 and AudioPosition <= 23.453 {return "waarbij een rode wilg waakt"}
		else if AudioPosition >= 23.680 and AudioPosition <= 26.066 {return "en naar de mond die nooit praat."}
		else return ""
		break;
		
	case "fr":
		if AudioPosition >= 0.000 and AudioPosition <= 1.787 {return "Shurmak: I am Shurmak, your guide."}
		else if AudioPosition >= 2.113 and AudioPosition <= 4.386 {return "I have known you since you were a child."}
		else if AudioPosition >= 4.607 and AudioPosition <= 6.473 {return "You were given a difficult challenge."}
		else if AudioPosition >= 6.840 and AudioPosition <= 9.660 {return "You will have to go far and overcome great danger."}
		else if AudioPosition >= 9.860 and AudioPosition <= 13.893 {return "Stay calm and use your knowledge and strength to defeat your enemies."}
		else if AudioPosition >= 14.335 and AudioPosition <= 17.368 {return "Remember what you learn along the way, and persevere."}
		else if AudioPosition >= 17.889 and AudioPosition <= 20.709 {return "Go now to the one who has a bed but never sleeps"}
		else if AudioPosition >= 21.033 and AudioPosition <= 23.453 {return "where by its side the red willow weeps"}
		else if AudioPosition >= 23.680 and AudioPosition <= 26.066 {return "and to its mouth that never speaks."}
		else return ""
		break;
	}
}
