var i = 0, Array_Length = array_length(Menu_Pages);
repeat(Array_Length)
{
	ds_grid_destroy(Menu_Pages[i])
	i++
}
