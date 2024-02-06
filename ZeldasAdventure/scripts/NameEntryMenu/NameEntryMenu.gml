// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NameEntry_SaveName()
{
	var SaveName
	if InputName != ""
	{
		SaveName = InputName
	}
	else
	{
		SaveName = "ZELDA"
	}
	
	ini_open(global.SaveDataFileName)
	
	var Section = "Save" + string(global.CurrentSaveGame)
	ini_write_string(Section, "Name", SaveName);
	ini_close()
	global.SavePlayerNames[global.CurrentSaveGame] = SaveName
	audio_play_sound(Menu_NameInput_Confirm,1000,false)
	SaveGame_Play()
	
}

function NameEntry_AddChar(Char)
{
	audio_play_sound(Menu_NameInput_Letter,1000,false)
	if string_length(InputName) < 12
	{
		InputName = InputName + Char
	}
}

function NameEntry_RemoveChar()
{
	audio_play_sound(Menu_NameInput_Backspace,1000,false)
	if string_length(InputName) > 1
	{
		InputName = string_delete(InputName,string_length(InputName),1)
	}
	else
	{
		InputName = ""
	}
}