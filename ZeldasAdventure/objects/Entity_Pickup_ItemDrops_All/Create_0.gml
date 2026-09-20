image_speed = 0;
WandCanPickUp = true; //Gotta wait until the attack animation is done
switch irandom_range(1,4)
{
	case 1 :
		EnemyDropType = "Ruby_5"
		image_index = 0;
		WandCanPickUp = false;
		alarm_set(1,FrameRate * 0.25)
		alarm_set(0,FrameRate * 5)
		break;
	case 2 :
		image_index = 1;
		EnemyDropType = "Ruby_10"
		WandCanPickUp = false;
		alarm_set(1,FrameRate * 0.25)
		alarm_set(0,FrameRate * 5)
		break;
	case 3 :
		image_index = 2;
		EnemyDropType = "Heart"
		StartPositionX = x
		StartPositionY = y
		path_start(Path_ItemDrop_Heart, 1.4, path_action_stop, false);
		break;
	case 4 :
		instance_destroy();
		break;
}