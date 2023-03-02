// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateMenuPage(){
	var Arguments, i = 0;
	repeat(argument_count)
	{
		Arguments[i] = argument[i];
		i++;
	}
	
	var MenuGrid = ds_grid_create(6,argument_count);
	i = 0; repeat(argument_count)
	{
		var ArgumentArray = Arguments[i];
		var ArrayLength = array_length(ArgumentArray);
		
		var ArrayX = 0; repeat(ArrayLength)
		{
			MenuGrid[# ArrayX, i] = ArgumentArray[ArrayX];
			ArrayX++;
		}
		
		i++;
	}		
	return MenuGrid
}