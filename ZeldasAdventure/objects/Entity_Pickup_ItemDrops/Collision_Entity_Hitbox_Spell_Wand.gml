/// @description Pickup
switch EnemyDropType
{
	case "Ruby_5" :
		AddRubies(5);
		instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Particle_Pickup_Disappear)
		instance_destroy();
		break;
	
	case "Ruby_10" :
		AddRubies(10);
		instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Particle_Pickup_Disappear)
		instance_destroy();
		break;
		
	case "Heart" :
		IncreaseHP(20);
		audio_play_sound_relative(SFX_Pickup_Heart,1000,false);
		instance_create_layer(x,y,"Temporary_BelowPlayer",Entity_Particle_Pickup_Disappear)
		instance_destroy();
		break;
}