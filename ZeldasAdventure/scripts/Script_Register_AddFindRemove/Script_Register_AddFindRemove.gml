//Register Commands
function Register_Add(RegisterName)
{
		
	if Register_FindIndex(RegisterName) <> -1
	{
		return false
	}
		
	//Add the item to the specified Inventory list
	ds_list_add(global.Register,RegisterName)
	return true;
}

function Register_Registered(RegisterName)
{
	var Index = Register_FindIndex(RegisterName)
	if Index = -1 
	{
		return false
	}
	else
	{
		return true
	}
}

function Register_FindIndex(RegisterName)
{
	return ds_list_find_index(global.Register,RegisterName)
}

function Register_FindValue(RegisterIndex)
{
	return ds_list_find_value(global.Register, RegisterIndex)
}

function Register_Remove(RegisterName)
{
	var RegisterIndex = Register_FindIndex(RegisterName)
	if RegisterIndex == -1
	{
		return false
	}
	else
	{
		ds_list_delete(global.Register,RegisterIndex)
		return true
	}
}