#macro localize Obj_LocalizationManager.LocalizedStrings
#macro LOCALIZE Obj_LocalizationManager.LocalizedStrings
#macro Localize Obj_LocalizationManager.LocalizedStrings

#macro meta Obj_LocalizationManager.AvailableLanguagesStruct
#macro META Obj_LocalizationManager.AvailableLanguagesStruct
#macro Meta Obj_LocalizationManager.AvailableLanguagesStruct

function LocalizationInit()
{
	var _availableLangsJsonStr = load_json_file_to_string("Localization/AvailableLanguages.json");

	// Load and parse the list of available localizations
	AvailableLanguagesStruct = json_parse(_availableLangsJsonStr);
		
	set_language(global.CurrentLanguage);
}

function GetLocalizedLocalizedSprite(PathToFile)
{
	var CurrentFilePath = string_concat(Meta.Languages[global.CurrentLanguage].SpritesFolder,"\\",PathToFile)
	var DefaultFilePath = string_concat(Meta.Languages[0].SpritesFolder,"\\",PathToFile)
	if file_exists(CurrentFilePath) = true
	{
		return sprite_add(CurrentFilePath,1,false,false,0,0)
	}
	else if file_exists(DefaultFilePath) = true
	{
		return sprite_add(DefaultFilePath,1,false,false,0,0)
	}
	else
	{
		return -1
	}
}
///@desc Returns a JSON string loaded from a JSON file, with (technically illegal) comments filtered out
///@arg  {string} jsonFilePath The path of the JSON file, i.e. "Localization/StringsEN.json"
///@returns {string} The JSON string
function load_json_file_to_string(jsonFilePath) {
	var _jsonFile = file_text_open_read(jsonFilePath); //Open the text file
	var _jsonStr = "";
	var _stringLine = "";
	var _commentPosition = 0;
	if (_jsonFile != -1) { //If file opened successfully
		while (!file_text_eof(_jsonFile)) { //Run until end of file reached
			_stringLine = file_text_readln(_jsonFile); //Read the next line
			_stringLine = string_trim(_stringLine); //Trim white space from beginning and end of line
			_commentPosition = string_pos("//", _stringLine); //Check for comments
			if (_commentPosition > 0) { //Comment found
				_stringLine = string_copy(_stringLine, 1, _commentPosition-1); //Remove comment
			}
		    _jsonStr += _stringLine; //Add line to the string
		}
		file_text_close(_jsonFile); //Close the text file
		return _jsonStr; //Return the text string
	}
	else {
		throw ("File "+jsonFilePath+" not found!"); //Error: File not found
	}
}

///@desc Sets the game's language
///@arg {real} langId Select ID number of the language to use, as determined by the list order in availableLanguages.json
function set_language(langId) {
	global.CurrentLanguage = langId;
	//Load the game's native language (In this case, English) localization first
	var _defaultJsonStr = load_json_file_to_string("Localization/"+Obj_LocalizationManager.AvailableLanguagesStruct.Languages[0].StringsFile);
	Obj_LocalizationManager.LocalizedStrings = json_parse(_defaultJsonStr);

	//Load other language to overwrite the native language.  This ensures that any missing string 
	//in the chosen language will default to the game's native language rather than crash the game.
	if (global.CurrentLanguage > 0) {
		var _localizationJsonStr = load_json_file_to_string("Localization/"+Obj_LocalizationManager.AvailableLanguagesStruct.Languages[global.CurrentLanguage].StringsFile);
		var _replacementStrings = json_parse(_localizationJsonStr);
	
		//Step through and replace strings
		var _sectionNames = variable_struct_get_names(_replacementStrings);
		for (var _j = array_length(_sectionNames)-1; _j >= 0; --_j) {
		    var _sectionName = _sectionNames[_j];
		    var _sectionData = _replacementStrings[$ _sectionName];
			var _sectionDataArr = variable_struct_get_names(_sectionData);
		    for (var _k = array_length(_sectionDataArr)-1; _k >= 0; --_k) {
				var _locReference = _sectionDataArr[_k];
				var _locText = _replacementStrings[$ _sectionName][$ _locReference];
				Obj_LocalizationManager.LocalizedStrings[$ _sectionName][$ _locReference] = _locText;
			}
		}
	}
}
