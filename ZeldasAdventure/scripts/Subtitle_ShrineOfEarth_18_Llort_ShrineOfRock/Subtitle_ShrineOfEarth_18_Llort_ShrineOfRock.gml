
function Subtitle_ShrineOfEarth_18_Llort_ShrineOfRock(AudioPosition)
{
	switch global.CurrentLanguage
	{
	case "en":
		if AudioPosition >= 0.000 and AudioPosition <= 2.820 {return "Llort: I said this is my cave! Mine!"}
		if AudioPosition >= 3.066 and AudioPosition <= 5.886 {return "This is the Shrine of Rock and I am Llort!"}
		if AudioPosition >= 5.947 and AudioPosition <= 9.693 {return "Go away! Take nothing! It's all mine!"}
		else return ""		
		break;
		
	case "nl":
		if AudioPosition >= 0.000 and AudioPosition <= 2.820 {return "Llort: Ik zei dit is mijn grot! Van mij!"}
		if AudioPosition >= 3.066 and AudioPosition <= 5.886 {return "Dit is de Steen-Tempel en ik ben Llort!"}
		if AudioPosition >= 5.947 and AudioPosition <= 9.693 {return "Ga weg! Neem niks mee! Het is allemaal van mij!"}
		else return ""		
		break;
	}
}