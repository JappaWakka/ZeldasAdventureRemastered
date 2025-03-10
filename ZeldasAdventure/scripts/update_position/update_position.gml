/// @description update_position()
/// @param speed
/// @param direction
function update_position(argument0, argument1) {

	var _speed = argument0;
	var _direction = argument1;

	// Takes a vector with direction and speed and updates the x and y values checking
	// if the desired position is free. If it is not, it checks in a cone of 178º looking
	// for a free space where it can moves.

	var x_target = x+lengthdir_x(_speed, _direction);
	var y_target = y+lengthdir_y(_speed, _direction);
	
	var FreeToMoveCurrent = true
	
	////Solid Objects
	if place_meeting(x_target, y_target, Parent_Solid)
	{
		FreeToMoveCurrent = false
	}
		
	////Red Boots Water
	
	//Temp Disable Red Boots
	//if place_meeting(x_target, y_target, Parent_UseItem_RedBoots)
	//{
	//	FreeToMoveCurrent = false
	//}
	
	if Item_FindIndex(Treasures.RedBoots,0) = -1
	{
		if place_meeting(x_target, y_target, Parent_UseItem_RedBoots)
		{
			FreeToMoveCurrent = false
		}
	}
	
	
	
	////Ladder Hole
	if Register_Registered("PlacedLadder") = false
	{
		if place_meeting(x_target, y_target, UseItem_ShrineOfEarth_02_Ladder)
		{
			FreeToMoveCurrent = false
		}
	}
		
	if FreeToMoveCurrent = true {
		// Move if we are not colliding.
	    x = x_target;
	    y = y_target;
	} else {
	
		// Check for the closest angle where we can move.
		var checking_angle_precision = 10;
	
		// Iterates from 0 to 90 degrees of collission in an amount of precision.
	    for ( var angle = 1; angle <= 69; angle += checking_angle_precision) {
		
			// Here we check in -angle and in angle.
	        for ( var multiplier = -1; multiplier <= 1; multiplier += 2) {
			
				// We add the our current angle plus the angle to check.
				// We iterate from 0 to 90 so we have to add the direction which the
				// player is moving to the iterator in order to make it relative.
	            var angle_to_check = _direction + angle * multiplier;
			
			
				// If the difference between the original direction and the collision 
				// free direction is 0 the speed will be the original. Otherwise if the
				// difference is 90 the speed will be 0.
				// Here we calculate the decrease of the speed relative to the angle difference.
				var speed_multiplier = 0.2+0.8*abs(dcos(angle_difference(angle_to_check, _direction)));
			
			
				// New coordinates to check for collision
	            x_target = x+lengthdir_x(_speed*speed_multiplier, angle_to_check);
	            y_target = y+lengthdir_y(_speed*speed_multiplier, angle_to_check);     
			
			
				// If there is no collision on the new place we update or position and
				// we exit from this script.
				var FreeToMoveNew = true
				
				////Solid Objects
				if place_meeting(x_target, y_target, Parent_Solid)
				{
					FreeToMoveNew = false
				}
				
				////Red Boots Water
				
				//Temp Disable Red Boots
				//if place_meeting(x_target, y_target, Parent_UseItem_RedBoots)
				//{
				//	FreeToMoveNew = false
				//}
				
				if Item_FindIndex(Treasures.RedBoots,0) = -1
				{
					if place_meeting(x_target, y_target, Parent_UseItem_RedBoots)
					{
						FreeToMoveNew = false
					}
				}
				
				////Ladder Hole
				if Register_Registered("PlacedLadder") = false
				{
					if place_meeting(x_target, y_target, UseItem_ShrineOfEarth_02_Ladder)
					{
						FreeToMoveNew = false
					}
				}
				
	            if FreeToMoveNew = true {
	                x = x_target;
	                y = y_target;  
	                exit;       
	            }   
	        }
	    }
	}


}
