/// @description move()
/// @param acceleration
/// @param direction
/// @param max_speed
/// @param moving
function move(argument0, argument1, argument2, argument3) {

	// ========================================================================
	// Takes a new direction and accelerates towards it checking for colissions.
	// ========================================================================


	// Takes the old movement vector and adds the new direction plus our acceleration
	// so we get the new direction and distance.
	var move_vector = get_move_vector(argument0,argument1,argument2,argument3);

	// Here we update the player position to the new cordinates checking for collisions
	// if we collide we check for the closest direction to make the collision slippery.
	update_position( move_vector[0], move_vector[1]);
	
	// Here we update our current speed and current direction variables.
	Speed = move_vector[0]; Direction = move_vector[1];


}
