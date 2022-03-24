function ArrayHas(array_to_search, value_to_find)
{
	var searchArray = array_to_search;
	var findValue = value_to_find;
	var loop = 0;
	repeat (array_length_1d(searchArray)) if (searchArray[loop++] == findValue) return true
	return false
}