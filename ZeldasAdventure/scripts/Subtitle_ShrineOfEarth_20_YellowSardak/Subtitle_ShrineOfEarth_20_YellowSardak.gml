function Subtitle_ShrineOfEarth_20_YellowSardak_EnemyOfMyBoss(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 1.660 {return Localize.Subtitles.Dialogue.ShrineOfEarth.YellowSardak.EnemyOfMyBoss.Line01} //"Yellow Sardak: Hey! Who goes there?"
	else if AudioPosition >= 1.933 and AudioPosition <= 4.093 {return Localize.Subtitles.Dialogue.ShrineOfEarth.YellowSardak.EnemyOfMyBoss.Line02} //"Aren't you an enemy of my boss Llort?"
	else if AudioPosition >= 4.273 and AudioPosition <= 6.133 {return Localize.Subtitles.Dialogue.ShrineOfEarth.YellowSardak.EnemyOfMyBoss.Line03} //"You can't come in here."
	else return ""
}

function Subtitle_ShrineOfEarth_20_YellowSardak_ShesComing(AudioPosition)
{
	if AudioPosition >=		 0.000 and AudioPosition <= 1.720 {return Localize.Subtitles.Dialogue.ShrineOfEarth.YellowSardak.ShesComing.Line01} //"Yellow Sardak: Hey, Llort! Watch out!"
	else if AudioPosition >= 1.966 and AudioPosition <= 3.019 {return Localize.Subtitles.Dialogue.ShrineOfEarth.YellowSardak.ShesComing.Line02} //"She's coming!"
	else return ""
}