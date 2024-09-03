//Register Commands
function Register_Add(RegisterName, Temporary = false)
{
	if Register_FindIndex(RegisterName) <> -1
	{
		return false
	}
	else
	{
		if Temporary = false
		{
			//Add the item to the regular Register list
			ds_list_add(global.Register,RegisterName)
			return true;
		}
		else
		{
				
			//Add the item to the temporary Register list
			ds_list_add(global.TempRegister,RegisterName)
			return true;
		}
	}
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
	if ds_list_find_index(global.Register, RegisterName) <> -1
	{
		return ds_list_find_index(global.Register, RegisterName)
	}
	else if ds_list_find_index(global.TempRegister, RegisterName) <> -1
	{
		return ds_list_find_index(global.TempRegister, RegisterName)
	}
	else
	{
		return -1
	}
}

function Register_FindValue(RegisterIndex)
{
	return ds_list_find_value(global.Register, RegisterIndex)
}

function Register_Remove(RegisterName, TempRegister = false)
{
	var RegisterIndex = Register_FindIndex(RegisterName)
	if RegisterIndex == -1
	{
		return false
	}
	else
	{
		if TempRegister = false
		{
			ds_list_delete(global.Register,RegisterIndex)
		}
		else
		{
			ds_list_delete(global.TempRegister,RegisterIndex)
		}
		return true
	}
}
function Register_ClearTempRegister()
{
	ds_list_clear(global.TempRegister)
}