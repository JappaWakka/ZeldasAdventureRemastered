function Music_Play(TrackAsset) //Play a music track
{
	var MusicID = audio_play_sound(TrackAsset,1000,false);
	return MusicID
}

function Music_SetSoundtrack(New)
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
			Shrine_Earth : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Earth_Boss : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
			Shrine_Earth_Sign : {Asset : Music_Silence, IntroLength : 0, LoopLength : 0},
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
			Shrine_Earth : {Asset : Music_Shrine_Earth_New, IntroLength : 0, LoopLength : 88.615},
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
		

function Music_SetCurrent(TrackName)
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
			case "Shrine_Earth" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Earth.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Earth.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Earth.LoopLength;
				break;
			case "Shrine_Earth_Boss" : 
				global.CurrentMusic_Asset = global.MusicTracks.Shrine_Earth_Boss.Asset;
				global.CurrentMusic_IntroLength = global.MusicTracks.Shrine_Earth_Boss.IntroLength;
				global.CurrentMusic_LoopLength = global.MusicTracks.Shrine_Earth_Boss.LoopLength;
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

//This function stores which tiles correspond to which music track in the two-dimensional array global.Music[x][y]
function Music_Init()
{
	//Y = 0
	global.Music[6][0] = "Shrine_Air";
	global.Music[7][0] = "Shrine_Air";
	global.Music[8][0] = "Shrine_Air";
	global.Music[9][0] = "Shrine_Air";
	global.Music[10][0] = "Shrine_Air";
	
	global.Music[25][0] = "Desert_Ocean";
	
	//Y = 1
	global.Music[5][1] = "Shrine_Air";
	global.Music[6][1] = "Shrine_Air";
	
	global.Music[10][0] = "Shrine_Air";
	
	global.Music[25][1] = "Desert";
	
	//Y = 2
	global.Music[5][2] = "Shrine_Air";
	global.Music[6][2] = "Shrine_Air_Sign";
	
	global.Music[9][2] = "Shrine_Air";
	global.Music[10][2] = "Shrine_Air";
	
	global.Music[24][2] = "Desert";
	global.Music[25][2] = "Desert_Ocean";
	
	//Y = 3	
	global.Music[6][3] = "Shrine_Air_Boss";
	
	global.Music[9][3] = "Shrine_Air";
	
	global.Music[24][3] = "Desert";
	global.Music[25][3] = "Desert_Ocean";
	
	//Y = 4
	global.Music[6][4] = "Shrine_Air";
	global.Music[7][4] = "Shrine_Air";
	global.Music[8][4] = "Shrine_Air";
	
	global.Music[17][4] = "Plain";
	global.Music[18][4] = "Plain";
	global.Music[20][4] = "Canyon_Cave";
	global.Music[21][4] = "Desert";
	global.Music[22][4] = "Desert";
	global.Music[23][4] = "Desert";
	global.Music[24][4] = "Desert";
	global.Music[25][4] = "Desert_Ocean";
	
	//Y = 5
	global.Music[8][5] = "Shrine_Air";
	
	global.Music[17][5] = "Plain";
	global.Music[18][5] = "Plain";
	global.Music[19][5] = "Plain";
	
	global.Music[21][5] = "Desert";
	global.Music[22][5] = "Desert";
	global.Music[23][5] = "Desert";
	global.Music[24][5] = "Desert";
	global.Music[25][5] = "Desert_Ocean";
	
	//Y = 6
	global.Music[0][6] = "Lava_Wind";
	global.Music[1][6] = "Lava_Wind";
	global.Music[2][6] = "Lava_Wind";
	global.Music[3][6] = "Lava_Wind";
	global.Music[4][6] = "Forest";
	global.Music[5][6] = "Forest";
	
	global.Music[8][6] = "Shrine_Air";
	global.Music[9][6] = "Shrine_Air";
	
	global.Music[13][6] = "Fireplace_Normal";
	
	global.Music[17][6] = "Plain";
	global.Music[18][6] = "Plain";
	
	global.Music[21][6] = "Desert";
	global.Music[22][6] = "Desert";
	global.Music[23][6] = "Desert_Ocean";
	
	//Y = 7
	global.Music[0][7] = "Lava_Wind";
	global.Music[1][7] = "Lava_Stream";
	global.Music[2][7] = "Lava_Stream";
	global.Music[3][7] = "Forest_Stream";
	global.Music[4][7] = "Forest_Stream";
	global.Music[5][7] = "Forest";
	
	global.Music[8][7] = "Shrine_Air";
	global.Music[9][7] = "Shrine_Air";
	
	global.Music[11][7] = "Forest";
	global.Music[12][7] = "Forest";
	global.Music[13][7] = "Forest";
	global.Music[14][7] = "Forest";
	global.Music[15][7] = "Forest_Stream";
	global.Music[16][7] = "Plain";
	global.Music[17][7] = "Plain";
	global.Music[18][7] = "Plain";
	global.Music[19][7] = "Plain";
	
	global.Music[21][7] = "Desert";
	global.Music[22][7] = "Fairy_Desert";
	global.Music[23][7] = "Desert_Ocean";
	
	//Y = 8
	global.Music[4][8] = "Forest_Stream";
	global.Music[5][8] = "Forest";
	global.Music[6][8] = "Forest";
	global.Music[7][8] = "Forest";
	
	global.Music[11][8] = "Forest";
	global.Music[12][8] = "Forest";
	global.Music[13][8] = "Fairy_Organ";
	global.Music[14][8] = "Forest_Stream";
	global.Music[15][8] = "Forest_Stream";
	global.Music[16][8] = "Plain";
	global.Music[17][8] = "Plain";
	
	global.Music[21][8] = "Desert";
	global.Music[22][8] = "Desert";
	global.Music[23][8] = "Desert_Ocean";
	
	//Y = 9
	global.Music[4][9] = "Forest_Stream";
	global.Music[5][9] = "Forest_Stream";
	global.Music[6][9] = "Forest_Stream";
	global.Music[7][9] = "Forest_Stream";
	global.Music[8][9] = "Forest";
	global.Music[9][9] = "Forest";
	global.Music[10][9] = "Forest";
	global.Music[11][9] = "Forest";
	global.Music[12][9] = "Forest";
	global.Music[13][9] = "Forest";
	global.Music[14][9] = "Forest_Stream";
	global.Music[15][9] = "Forest";
	global.Music[16][9] = "Plain";
	global.Music[17][9] = "Plain";
	
	global.Music[21][9] = "Desert";
	global.Music[22][9] = "Desert";
	global.Music[23][9] = "Desert_Ocean";
	
	//Y = 10
	global.Music[6][10] = "Forest_Stream";
	global.Music[7][10] = "Forest_Stream";
	global.Music[8][10] = "Forest_Stream";
	global.Music[9][10] = "Forest_Stream";
	global.Music[10][10] = "Forest";
	global.Music[11][10] = "Forest";
	global.Music[12][10] = "Forest";
	global.Music[13][10] = "Forest";
	global.Music[14][10] = "Forest_Stream";
	global.Music[15][10] = "Plain";
	global.Music[16][10] = "Canyon_Cave";
	
	global.Music[21][10] = "Desert";
	global.Music[22][10] = "Desert";
	global.Music[23][10] = "Desert_Ocean";
	
	//Y = 11
	global.Music[7][11] = "Twinkle_Normal";
	global.Music[8][11] = "Twinkle_Normal";
	global.Music[9][11] = "Blacksmith";
	global.Music[10][11] = "Forest_Stream";
	global.Music[11][11] = "Forest_Stream";
	global.Music[12][11] = "Forest_Stream";
	global.Music[13][11] = "Forest_Stream";
	global.Music[14][11] = "Forest_Stream";
	global.Music[15][11] = "Plain";
	
	global.Music[21][11] = "Desert";
	global.Music[22][11] = "Desert";
	global.Music[23][11] = "Desert_Ocean";
	
	//Y = 12
	global.Music[9][12] = "Twinkle_Dad";
	global.Music[10][12] = "Forest";
	global.Music[11][12] = "Forest";
	global.Music[12][12] = "Forest_Stream";
	global.Music[13][12] = "Forest_Stream";
	global.Music[14][12] = "Forest";
	global.Music[15][12] = "Plain";
	global.Music[16][12] = "Plain";
	
	global.Music[22][12] = "Desert_Ocean";
	
	global.Music[25][12] = "Forest_Ocean";
	
	//Y = 13
	global.Music[10][13] = "Forest";
	global.Music[11][13] = "Forest";
	global.Music[12][13] = "Plain_Stream";
	global.Music[13][13] = "Forest_Stream";
	global.Music[14][13] = "Forest_Stream";
	global.Music[15][13] = "Plain_Stream";
	global.Music[16][13] = "Plain_Stream";
	
	global.Music[19][13] = "Marsh";
	global.Music[20][13] = "Marsh";
	global.Music[21][13] = "Marsh";
	global.Music[22][13] = "Desert_Ocean";
	global.Music[23][13] = "Forest_Ocean";
	global.Music[24][13] = "Forest_Ocean";
	global.Music[25][13] = "Forest_Ocean";
	
	//Y = 14
	global.Music[9][14] = "Plain_Stream";
	global.Music[10][14] = "Forest_Stream";
	global.Music[11][14] = "Forest_Stream";
	global.Music[12][14] = "Plain_Stream";
	global.Music[13][14] = "Plain";
	global.Music[14][14] = "Plain";
	global.Music[15][14] = "Canyon_Normal";
	global.Music[16][14] = "Plain_Stream";
	global.Music[17][14] = "Plain";
	global.Music[18][14] = "Marsh";
	global.Music[19][14] = "Marsh";
	global.Music[20][14] = "Marsh";
	global.Music[21][14] = "Marsh";
	global.Music[22][14] = "Marsh";
	global.Music[23][14] = "Forest";
	global.Music[24][14] = "Forest";
	global.Music[25][14] = "Forest";
	global.Music[26][14] = "Forest_Ocean";
	
	//Y = 15
	global.Music[9][15] = "Plain_Stream";
	global.Music[10][15] = "Plain_Stream";
	global.Music[11][15] = "Plain_Stream";
	global.Music[12][15] = "Plain";
	global.Music[13][15] = "Plain";
	global.Music[14][15] = "Canyon_Normal";
	global.Music[15][15] = "Canyon_Normal";
	global.Music[16][15] = "Canyon_Normal";
	global.Music[17][15] = "Plain_Stream";
	global.Music[18][15] = "Marsh";
	global.Music[19][15] = "Marsh";
	global.Music[20][15] = "Marsh";
	global.Music[21][15] = "Marsh";
	global.Music[22][15] = "Marsh";
	global.Music[23][15] = "Forest";
	global.Music[24][15] = "Forest";
	global.Music[25][15] = "Canyon_Normal";
	global.Music[26][15] = "Canyon_Normal";
	
	//Y = 16
	global.Music[9][16] = "Plain_Stream";
	global.Music[10][16] = "Plain_Stream";
	global.Music[11][15] = "Plain";
	global.Music[12][15] = "Plain";
	global.Music[13][16] = "Canyon_Normal";
	global.Music[14][16] = "Canyon_Normal";
	
	global.Music[16][15] = "Canyon_Normal";
	global.Music[17][15] = "Canyon_Normal";
	global.Music[18][15] = "Marsh";
	global.Music[19][15] = "Marsh";
	global.Music[20][15] = "Marsh";
	global.Music[21][15] = "Marsh";
	global.Music[22][16] = "Sirram";
	
	global.Music[24][16] = "Canyon_Normal";
	global.Music[25][16] = "Canyon_Normal";
	global.Music[26][16] = "Canyon_Normal";
	global.Music[27][16] = "Canyon_Normal";
	global.Music[28][16] = "Canyon_Normal";
	
	//Y = 17
	global.Music[10][17] = "Forest_Stream";
	global.Music[11][17] = "Forest";
	global.Music[12][17] = "Canyon_Normal";
	global.Music[13][17] = "Canyon_Normal";
	
	global.Music[16][17] = "Canyon_Normal";
	global.Music[17][17] = "Canyon_Normal";
	global.Music[18][17] = "Marsh";
	global.Music[19][17] = "Marsh";
	global.Music[20][17] = "Marsh";
	global.Music[21][17] = "Marsh_Ocean";
	
	global.Music[28][17] = "Fairy_Canyon";
	
	//Y = 18
	global.Music[10][18] = "Forest";
	global.Music[11][18] = "Canyon_Normal";
	global.Music[12][18] = "Canyon_Normal";
	
	global.Music[15][18] = "Fireplace_Normal";
	global.Music[16][18] = "Canyon_Normal";
	global.Music[17][18] = "Canyon_Normal";
	global.Music[18][18] = "Marsh";
	global.Music[19][18] = "Marsh";
	global.Music[20][18] = "Marsh";
	global.Music[21][18] = "Beach_Ocean";
	
	global.Music[27][18] = "Shrine_Illusion_Sign";
	
	//Y = 19
	global.Music[4][19] = "Plain_Stream";
	global.Music[5][19] = "Plain_Stream";
	global.Music[6][19] = "Plain_Stream";
	global.Music[7][19] = "Plain_Stream";
	global.Music[8][19] = "Plain";
	global.Music[9][19] = "Forest";
	global.Music[10][19] = "Forest";
	
	global.Music[15][19] = "Beach_Ocean";
	global.Music[16][19] = "Beach_Ocean";
	global.Music[17][19] = "Marsh_Ocean";
	global.Music[18][19] = "Beach_Ocean";
	global.Music[19][19] = "Beach_Ocean";
	global.Music[20][19] = "Beach_Ocean";
	global.Music[21][19] = "Beach_Ocean";
	
	global.Music[27][19] = "Shrine_Illusion_Boss";
	
	//Y = 20
	global.Music[4][20] = "Plain_Stream";
	global.Music[5][20] = "Plain_Stream";
	global.Music[6][20] = "Plain";
	global.Music[7][20] = "Plain_Stream";
	global.Music[8][20] = "Plain_Stream";
	global.Music[9][20] = "Forest";
	
	global.Music[12][20] = "Canyon_Cave";
	
	global.Music[15][20] = "Beach_Ocean";
	
	global.Music[24][20] = "Shrine_Illusion";
	global.Music[25][20] = "Shrine_Illusion";
	global.Music[26][20] = "Shrine_Illusion";
	global.Music[27][20] = "Shrine_Illusion";
	
	//Y = 21
	global.Music[4][21] = "Plain";
	global.Music[5][21] = "Plain";
	global.Music[6][21] = "Plain";
	global.Music[7][21] = "Plain";
	global.Music[8][21] = "Plain_Stream";
	global.Music[9][21] = "Forest_Stream";
	global.Music[10][21] = "Inn";			  
	
	global.Music[14][21] = "Beach_Ocean";
	global.Music[15][21] = "Beach_Ocean";
	
	global.Music[20][21] = "Shrine_Illusion";
	global.Music[21][21] = "Shrine_Illusion";
	global.Music[22][21] = "Shrine_Illusion";
	global.Music[23][21] = "Shrine_Illusion";
	global.Music[24][21] = "Shrine_Illusion";
	
	//Y = 22
	global.Music[4][22] = "Plain";
	global.Music[5][22] = "Plain";
	global.Music[6][22] = "Plain";
	global.Music[7][22] = "Plain";
	global.Music[8][22] = "Plain";
	global.Music[9][22] = "Plain";
	
	global.Music[14][22] = "Beach_Ocean";
	
	global.Music[20][22] = "Shrine_Illusion";
	global.Music[21][22] = "Shrine_Illusion";
	
	global.Music[23][22] = "Shrine_Illusion";
	global.Music[24][22] = "Shrine_Illusion";
	
	global.Music[26][22] = "Shrine_Destiny";
	
	//Y = 23
	global.Music[3][23] = "Canyon_Normal";
	global.Music[4][23] = "Canyon_Normal";
	global.Music[5][23] = "Plain";
	global.Music[6][23] = "Plain";
	global.Music[7][23] = "Plain";
	global.Music[8][23] = "Plain";
	global.Music[9][23] = "Plain";
	
	global.Music[12][23] = "Canyon_Cave";
	
	global.Music[14][23] = "Beach_Ocean";
	
	global.Music[20][23] = "Shrine_Illusion";
	global.Music[21][23] = "Shrine_Illusion";
	
	global.Music[23][23] = "Shrine_Destiny";
	
	//Y = 24
	global.Music[5][24] = "Plain";
	global.Music[6][24] = "Plain";
	global.Music[7][24] = "Plain";
	global.Music[8][24] = "Plain";
	global.Music[9][24] = "Forest";
	
	global.Music[12][24] = "Beach_Ocean";
	global.Music[13][24] = "Beach_Ocean";
	global.Music[14][24] = "Beach_Ocean";
	
	global.Music[18][24] = "Shrine_Illusion";
	global.Music[19][24] = "Shrine_Illusion";
	global.Music[20][24] = "Shrine_Illusion";
	
	global.Music[23][24] = "Shrine_Destiny";
	global.Music[24][24] = "Shrine_Destiny";
	global.Music[25][24] = "Shrine_Destiny";
	global.Music[26][24] = "Shrine_Destiny";
	
	//Y = 25
	global.Music[5][25] = "Forest";
	global.Music[6][25] = "Forest";
	global.Music[7][25] = "Forest";
	global.Music[8][25] = "Forest";
	global.Music[9][25] = "Forest";
	
	
	global.Music[11][25] = "Fireplace_Southport";
	global.Music[12][25] = "Beach_Ocean";
	
	global.Music[18][25] = "Shrine_Illusion";
	global.Music[19][25] = "Shrine_Illusion";
	
	global.Music[23][25] = "Shrine_Destiny";
	
	//Y = 26
	global.Music[5][26] = "Forest";
	global.Music[6][26] = "Forest";
	global.Music[7][26] = "Forest";
	
	global.Music[11][26] = "Beach_Ocean";
	global.Music[12][26] = "Beach_Ocean";
	
	global.Music[18][26] = "Shrine_Illusion";
	global.Music[19][26] = "Shrine_Illusion";
	
	global.Music[21][26] = "Shrine_Destiny";
	global.Music[22][26] = "Shrine_Destiny";
	global.Music[23][26] = "Shrine_Destiny";
	
	//Y = 27
	global.Music[5][27] = "Forest";
	global.Music[6][27] = "Forest";
	global.Music[7][27] = "Forest";
	
	global.Music[10][27] = "Beach_Ocean";
	global.Music[11][27] = "Beach_Ocean";
	global.Music[12][27] = "Beach_Ocean";
	global.Music[13][27] = "Ocean";
	global.Music[14][27] = "Ocean";
	global.Music[15][27] = "Ocean";
	global.Music[16][27] = "Ocean";
	global.Music[17][27] = "Ocean";
	
	global.Music[19][27] = "Shrine_Illusion";
	
	global.Music[21][27] = "Shrine_Destiny";
	
	global.Music[23][27] = "Shrine_Destiny";
	global.Music[24][27] = "Shrine_Destiny";
	
	//Y = 28
	global.Music[6][28] = "Forest";
	global.Music[7][28] = "Forest";
	
	global.Music[12][28] = "Shrine_Earth_Sign";
	
	global.Music[16][28] = "Ocean";
	global.Music[17][28] = "Ocean";
	
	global.Music[21][28] = "Shrine_Destiny";
	global.Music[22][28] = "Shrine_Destiny";
	global.Music[23][28] = "Shrine_Destiny";
	global.Music[24][28] = "Shrine_Destiny";
	global.Music[25][28] = "Shrine_Destiny";
	global.Music[26][28] = "Shrine_Destiny";
	global.Music[27][28] = "Shrine_Boss";
	global.Music[28][28] = "Shrine_Destiny";
	
	//Y = 29
	global.Music[6][29] = "Forest";
	
	global.Music[12][29] = "Shrine_Earth_Boss";
	
	//Y = 30
	global.Music[6][30] = "Forest";
	
	global.Music[10][30] = "Shrine_Earth";
	global.Music[11][30] = "Shrine_Earth";
	global.Music[12][30] = "Shrine_Earth";
	
	global.Music[14][30] = "Shrine_Water";
	global.Music[15][30] = "Shrine_Water";
	global.Music[16][30] = "Shrine_Water";
	
	//Y = 31
	global.Music[6][31] = "Forest";
	global.Music[6][31] = "Canyon_Cave";

	global.Music[9][31] = "Shrine_Earth";
	global.Music[10][31] = "Shrine_Earth";
	
	global.Music[16][31] = "Shrine_Water";
	
	//Y = 32
	global.Music[9][32] = "Shrine_Earth";
	
	global.Music[15][32] = "Shrine_Water";
	global.Music[16][32] = "Shrine_Water";
	
	//Y = 33
	global.Music[9][33] = "Shrine_Earth";
	
	global.Music[11][33] = "Shrine_Earth";
	
	global.Music[15][33] = "Shrine_Water";
	
	global.Music[20][33] = "Shrine_Water";
	global.Music[21][33] = "Shrine_Water";
	global.Music[22][33] = "Shrine_Water";
	
	//Y = 34
	global.Music[6][34] = "Shrine_Earth";
	global.Music[7][34] = "Shrine_Earth";
	global.Music[8][34] = "Shrine_Earth";
	global.Music[9][34] = "Shrine_Earth";
	global.Music[10][34] = "Shrine_Earth";
	global.Music[11][34] = "Shrine_Earth";
	global.Music[12][34] = "Shrine_Earth";
	
	global.Music[15][34] = "Shrine_Water";
	global.Music[16][34] = "Shrine_Water";
	global.Music[17][34] = "Shrine_Water";
	
	global.Music[19][34] = "Shrine_Water";
	global.Music[20][34] = "Shrine_Water";
	global.Music[22][34] = "Shrine_Water";
	global.Music[23][34] = "Shrine_Water_Boss";
	global.Music[24][34] = "Shrine_Water_Boss";
	
	//Y = 35
	global.Music[9][35] = "Shrine_Earth";
	
	global.Music[17][35] = "Shrine_Water";
	global.Music[18][35] = "Shrine_Water";
	global.Music[19][35] = "Shrine_Water";
	
	global.Music[24][34] = "Shrine_Water_Boss";
	global.Music[25][34] = "Shrine_Water_Boss";
	global.Music[26][34] = "Shrine_Water";
	
	//Y = 36
	global.Music[9][36] = "Shrine_Earth";
	global.Music[10][36] = "Shrine_Earth";
	
	//Y = 37
	global.Music[10][37] = "Shrine_Earth";
	global.Music[11][37] = "Shrine_Earth";
	
}