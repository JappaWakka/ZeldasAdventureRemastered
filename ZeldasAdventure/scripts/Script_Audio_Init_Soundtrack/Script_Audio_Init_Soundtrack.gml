function Audio_Init_Soundtrack(New)
{
	global.NewSoundtrack = New
	if New = false
	{
		global.MusicTracks = 
		{
			//The variables of each audio track, most of it is set to Silence by default because I still need to edit them
			Silence : {Asset : Music_Silence, IntroLength : 0.25, LoopLength : 0.25},
			Beach_Ocean : {Asset : Music_Beach_Ocean, IntroLength : 1.751, LoopLength : 19.845},
			Blacksmith : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Canyon_Normal : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Canyon_Cave : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Desert : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Desert_Ocean : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Fairy_Canyon : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Fairy_Organ : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Fairy_Desert : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Fireplace_Normal : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Fireplace_Southport : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Forest : {Asset : Music_Forest, IntroLength : 1.429, LoopLength : 19.996},
			Forest_Ocean : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Forest_Stream : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Inn : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Lava_Stream : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Lava_Wind : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Marsh : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Marsh_Ocean : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Ocean : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Plain : {Asset : Music_Plain, IntroLength : 1.755, LoopLength : 19.797},
			Plain_Stream : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Sirram : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Twinkle_Normal : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Twinkle_Dad : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Earth_Ambient : {Asset : Music_ShrineOfEarth_Ambient, IntroLength : 2.244, LoopLength : 39.467},
			Shrine_Earth_Boss : {Asset : Music_ShrineOfEarth_Boss, IntroLength : 1.748, LoopLength : 19.981},
			Shrine_Earth_Regular : {Asset : Music_ShrineOfEarth_Regular, IntroLength : 1.748, LoopLength : 322.819},
			Shrine_Earth_Sign : {Asset : Music_ShrineOfEarth_Sign, IntroLength : 1.748, LoopLength : 19.680},
			Shrine_Illusion : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Illusion_Boss : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Illusion_Sign : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Air : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Air_Boss : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Air_Sign : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Destiny : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Destiny_Boss : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Destiny_Sign : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Water : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Water_Boss : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Water_Sign : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Strength : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Strength_Boss : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Strength_Sign : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Fire : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Fire_Boss : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Fire_Sign : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Gauntlet_Llort : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Gauntlet_Pasquinade : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Gauntlet_Avianna : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Gauntlet_Malmort : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Gauntlet_Agwanda : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Gauntlet_Warbane : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Gauntlet_Gannon : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
		}
	}
	else
	{
		global.MusicTracks = 
		{
			//The variables of each audio track, most of it is set to Silence by default because I still need to edit them
			Silence : {Asset : Music_Silence, IntroLength : 0.25, LoopLength : 0.25},
			Beach_Ocean : {Asset : Music_Beach_Ocean, IntroLength : 1.751, LoopLength : 19.845},
			Blacksmith : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Canyon_Normal : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Canyon_Cave : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Desert : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Desert_Ocean : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Fairy_Canyon : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Fairy_Organ : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Fairy_Desert : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Fireplace_Normal : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Fireplace_Southport : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Forest : {Asset : Music_Forest, IntroLength : 1.429, LoopLength : 19.996},
			Forest_Ocean : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Forest_Stream : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Inn : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Lava_Stream : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Lava_Wind : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Marsh : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Marsh_Ocean : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Ocean : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Plain : {Asset : Music_Plain, IntroLength : 1.755, LoopLength : 19.797},
			Plain_Stream : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Sirram : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Twinkle_Normal : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Twinkle_Dad : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Earth_Regular : {Asset : Music_Shrine_Earth_New, IntroLength : 0, LoopLength : 88.615},
			Shrine_Earth_Ambient : {Asset : Music_Shrine_Earth_New, IntroLength : 0, LoopLength : 88.615},
			Shrine_Earth_Boss : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Earth_Sign : {Asset : Music_Shrine_Earth_New, IntroLength : 0, LoopLength : 88.615},
			Shrine_Illusion : {Asset : Music_Shrine_Illusion_New, IntroLength : 0, LoopLength : 74.056},
			Shrine_Illusion_Boss : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Illusion_Sign : {Asset : Music_Shrine_Illusion_New, IntroLength : 0, LoopLength : 74.056},
			Shrine_Air : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Air_Boss : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Air_Sign : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Destiny : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Destiny_Boss : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Destiny_Sign : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Water : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Water_Boss : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Water_Sign : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Strength : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Strength_Boss : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Strength_Sign : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Fire : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Fire_Boss : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Fire_Sign : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Gauntlet_Llort : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Gauntlet_Pasquinade : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Gauntlet_Avianna : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Gauntlet_Malmort : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Gauntlet_Agwanda : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Gauntlet_Warbane : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Gauntlet_Gannon : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
		}
	}
}