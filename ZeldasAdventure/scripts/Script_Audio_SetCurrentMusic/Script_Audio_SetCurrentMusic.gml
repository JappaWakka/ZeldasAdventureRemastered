function Audio_SetCurrentMusic(TrackName)
{
	if global.CurrentMusic_Name != TrackName  //Check if the track is not the same as the one currently playing
	{
		//Set the various global.CurrentMusic properties to the ones corresponding to the name of the track
		global.CurrentMusic_Name = TrackName;
		switch TrackName
		{
			case "Silence" :
				global.CurrentMusic_Asset = global.MusicTracks.Silence.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Silence.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Silence.LoopLength;
				break;
			case "Beach_Ocean" :
				global.CurrentMusic_Asset = global.MusicTracks.Beach_Ocean.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Beach_Ocean.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Beach_Ocean.LoopLength;
				break;
			case "Blacksmith" :
				global.CurrentMusic_Asset = global.MusicTracks.Blacksmith.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Blacksmith.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Blacksmith.LoopLength;
				break;
			case "Canyon_Normal" :
				global.CurrentMusic_Asset = global.MusicTracks.Canyon_Normal.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Canyon_Normal.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Canyon_Normal.LoopLength;
				break;
			case "Canyon_Cave" :
				global.CurrentMusic_Asset = global.MusicTracks.Canyon_Cave.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Canyon_Cave.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Canyon_Cave.LoopLength;
				break;
			case "Desert" :
				global.CurrentMusic_Asset = global.MusicTracks.Desert.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Desert.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Desert.LoopLength;
				break;
			case "Desert_Ocean" :
				global.CurrentMusic_Asset = global.MusicTracks.Desert_Ocean.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Desert_Ocean.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Desert_Ocean.LoopLength;
				break;
			case "Fairy_Canyon" :
				global.CurrentMusic_Asset = global.MusicTracks.Fairy_Canyon.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Fairy_Canyon.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Fairy_Canyon.LoopLength;
				break;
			case "Fairy_Organ" :
				global.CurrentMusic_Asset = global.MusicTracks.Fairy_Organ.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Fairy_Organ.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Fairy_Organ.LoopLength;
				break;
			case "Fairy_Desert" :
				global.CurrentMusic_Asset = global.MusicTracks.Fairy_Desert.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Fairy_Desert.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Fairy_Desert.LoopLength;
				break;
			case "Fireplace_Normal" :
				global.CurrentMusic_Asset = global.MusicTracks.Fireplace_Normal.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Fireplace_Normal.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Fireplace_Normal.LoopLength;
				break;
			case "Fireplace_Southport" :
				global.CurrentMusic_Asset = global.MusicTracks.Fireplace_Southport.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Fireplace_Southport.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Fireplace_Southport.LoopLength;
				break;
			case "Forest" :
				global.CurrentMusic_Asset = global.MusicTracks.Forest.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Forest.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Forest.LoopLength;
				break;
			case "Forest_Ocean" :
				global.CurrentMusic_Asset = global.MusicTracks.Forest_Ocean.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Forest_Ocean.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Forest_Ocean.LoopLength;
				break;
			case "Forest_Stream" :
				global.CurrentMusic_Asset = global.MusicTracks.Forest_Stream.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Forest_Stream.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Forest_Stream.LoopLength;
				break;
			case "Inn" :
				global.CurrentMusic_Asset = global.MusicTracks.Inn.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Inn.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Inn.LoopLength;
				break;
			case "Lava_Stream" :
				global.CurrentMusic_Asset = global.MusicTracks.Lava_Stream.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Lava_Stream.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Lava_Stream.LoopLength;
				break;
			case "Lava_Wind" :
				global.CurrentMusic_Asset = global.MusicTracks.Lava_Wind.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Lava_Wind.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Lava_Wind.LoopLength;
				break;
			case "Marsh" :
				global.CurrentMusic_Asset = global.MusicTracks.Marsh.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Marsh.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Marsh.LoopLength;
				break;
			case "Marsh_Ocean" :
				global.CurrentMusic_Asset = global.MusicTracks.Marsh_Ocean.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Marsh_Ocean.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Marsh_Ocean.LoopLength;
				break;
			case "Ocean" :
				global.CurrentMusic_Asset = global.MusicTracks.Ocean.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Ocean.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Ocean.LoopLength;
				break;
			case "Plain" :
				global.CurrentMusic_Asset = global.MusicTracks.Plain.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Plain.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Plain.LoopLength;
				break;
			case "Plain_Stream" :
				global.CurrentMusic_Asset = global.MusicTracks.Plain_Stream.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Plain_Stream.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Plain_Stream.LoopLength;
				break;
			case "Sirram" :
				global.CurrentMusic_Asset = global.MusicTracks.Sirram.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Sirram.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Sirram.LoopLength;
				break;
			case "Twinkle_Normal" :
				global.CurrentMusic_Asset = global.MusicTracks.Twinkle_Normal.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Twinkle_Normal.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Twinkle_Normal.LoopLength;
				break;
			case "Twinkle_Dad" :
				global.CurrentMusic_Asset = global.MusicTracks.Twinkle_Dad.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Twinkle_Dad.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Twinkle_Dad.LoopLength;
				break;
			case "Shrine_Earth_Ambient" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Earth_Ambient.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Earth_Ambient.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Earth_Ambient.LoopLength;
				break;
			case "Shrine_Earth_Boss" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Earth_Boss.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Earth_Boss.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Earth_Boss.LoopLength;
				break;
			case "Shrine_Earth_Regular" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Earth_Regular.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Earth_Regular.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Earth_Regular.LoopLength;
				break;
			case "Shrine_Earth_Sign" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Earth_Sign.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Earth_Sign.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Earth_Sign.LoopLength;
				break;
			case "Shrine_Illusion" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Illusion.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Illusion.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Illusion.LoopLength;
				break;
			case "Shrine_Illusion_Boss" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Illusion_Boss.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Illusion_Boss.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Illusion_Boss.LoopLength;
				break;
			case "Shrine_Illusion_Sign" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Illusion_Sign.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Illusion_Sign.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Illusion_Sign.LoopLength;
				break;
			case "Shrine_Air" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Air.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Air.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Air.LoopLength;
				break;
			case "Shrine_Air_Boss" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Air_Boss.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Air_Boss.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Air_Boss.LoopLength;
				break;
			case "Shrine_Air_Sign" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Air_Sign.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Air_Sign.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Air_Sign.LoopLength;
				break;
			case "Shrine_Destiny" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Destiny.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Destiny.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Destiny.LoopLength;
				break;
			case "Shrine_Destiny_Boss" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Destiny_Boss.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Destiny_Boss.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Destiny_Boss.LoopLength;
				break;
			case "Shrine_Destiny_Sign" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Destiny_Sign.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Destiny_Sign.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Destiny_Sign.LoopLength;
				break;
			case "Shrine_Water" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Water.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Water.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Water.LoopLength;
				break;
			case "Shrine_Water_Boss" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Water_Boss.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Water_Boss.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Water_Boss.LoopLength;
				break;
			case "Shrine_Water_Sign" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Water_Sign.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Water_Sign.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Water_Sign.LoopLength;
				break;
			case "Shrine_Strength" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Strength.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Strength.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Strength.LoopLength;
				break;
			case "Shrine_Strength_Boss" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Strength_Boss.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Strength_Boss.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Strength_Boss.LoopLength;
				break;
			case "Shrine_Strength_Sign" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Strength_Sign.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Strength_Sign.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Strength_Sign.LoopLength;
				break;
			case "Shrine_Fire" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Fire.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Fire.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Fire.LoopLength;
				break;
			case "Shrine_Fire_Boss" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Fire_Boss.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Fire_Boss.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Fire_Boss.LoopLength;
				break;
			case "Shrine_Fire_Sign" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Fire_Sign.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Fire_Sign.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Fire_Sign.LoopLength;
				break;
			case "Gauntlet_Llort" : 
				global.CurrentMusic_Asset = global.MusicTracks.Gauntlet_Llort.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Gauntlet_Llort.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Gauntlet_Llort.LoopLength;
				break;
			case "Gauntlet_Pasquinade" : 
				global.CurrentMusic_Asset = global.MusicTracks.Gauntlet_Pasquinade.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Gauntlet_Pasquinade.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Gauntlet_Pasquinade.LoopLength;
				break;
			case "Gauntlet_Avianna" : 
				global.CurrentMusic_Asset = global.MusicTracks.Gauntlet_Avianna.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Gauntlet_Avianna.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Gauntlet_Avianna.LoopLength;
				break;
			case "Gauntlet_Malmort" : 
				global.CurrentMusic_Asset = global.MusicTracks.Gauntlet_Malmort.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Gauntlet_Malmort.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Gauntlet_Malmort.LoopLength;
				break;
			case "Gauntlet_Agwanda" : 
				global.CurrentMusic_Asset = global.MusicTracks.Gauntlet_Agwanda.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Gauntlet_Agwanda.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Gauntlet_Agwanda.LoopLength;
				break;
			case "Gauntlet_Warbane" : 
				global.CurrentMusic_Asset = global.MusicTracks.Gauntlet_Warbane.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Gauntlet_Warbane.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Gauntlet_Warbane.LoopLength;
				break;
			case "Gauntlet_Gannon" : 
				global.CurrentMusic_Asset = global.MusicTracks.Gauntlet_Gannon.Asset
				global.CurrentMusic_IntroLength = global.MusicTracks.Gauntlet_Gannon.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Gauntlet_Gannon.LoopLength;
				break;
		}
	}
	else
	{
		global.SwitchTracks = false
	}
}