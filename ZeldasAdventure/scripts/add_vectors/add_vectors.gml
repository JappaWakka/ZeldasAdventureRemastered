/// @description add_vectors()
/// @param First_vector_magnitude
/// @param First_vector_angle
/// @param Second_vector_magnitude
/// @param Second_vector_angle
function add_vectors(argument0, argument1, argument2, argument3) {

	// It takes two vectors with direction and speed and adds them.
	// It returns an array with the final vector(magnitude, angle).


	// Decomposing the first vector.
	var v1_x = lengthdir_x(argument0, argument1);
	var v1_y = lengthdir_y(argument0, argument1);

	// Decomposing the second vector.
	var v2_x = lengthdir_x(argument2, argument3);
	var v2_y = lengthdir_y(argument2, argument3);

	// Adding the X and Y coordinates.
	var final_v_x = v1_x + v2_x;
	var final_v_y = v1_y + v2_y;

	// Calculating the distance and direction for the final vector.
	var final_magnitude = point_distance(0,0,final_v_x,final_v_y);
	var final_angle = point_direction(0,0,final_v_x,final_v_y);

	return [final_magnitude,final_angle]


}
