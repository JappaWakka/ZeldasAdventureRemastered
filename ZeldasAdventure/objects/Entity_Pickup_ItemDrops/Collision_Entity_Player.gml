/// @description Pickup
switch EnemyDropType
{
	case "Ruby_5" :
		AddRubies(5);
		instance_destroy();
		break;
	
	case "Ruby_10" :
		AddRubies(10);
		instance_destroy();
		break;
		
	case "Heart" :
		IncreaseHP(1);
		audio_play_sound_relative(SFX_Pickup_Heart,1000,false);
		instance_destroy();
		break;
}