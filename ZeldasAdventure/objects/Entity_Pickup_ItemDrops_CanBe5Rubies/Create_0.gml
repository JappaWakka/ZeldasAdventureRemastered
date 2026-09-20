image_speed = 0;
WandCanPickUp = true; //Gotta wait until the attack animation is done
switch irandom_range(1,2)
{
	case 1 :
		EnemyDropType = "Ruby_5"
		image_index = 0;
		WandCanPickUp = false;
		alarm_set(1,FrameRate * 0.25)
		alarm_set(0,FrameRate * 5)
		break;
	case 2 :
		instance_destroy();
		break;
}