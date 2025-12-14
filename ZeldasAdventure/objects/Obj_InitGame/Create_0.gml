delta_init()
texture_prefetch("TextureGroup_Maps");
InitGameVariables();
display_set_timing_method(tm_sleep);
randomize()
instance_create_layer(240,0,"System",Obj_LocalizationManager)
with Obj_LocalizationManager
{
	AvailableLanguagesStruct = {} //Initialize the available languages struct
	LocalizedStrings = {}; //Initialize the localized strings struct
	LocalizationInit()
}