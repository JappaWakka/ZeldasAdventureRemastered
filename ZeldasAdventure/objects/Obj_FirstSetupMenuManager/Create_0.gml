enum SetupMenu_Page
{
	SettingsSetup,
	RemasteredModeSetup
}

var LanguageNameArray = []
for (var i = 0; i <= array_length(Obj_LocalizationManager.AvailableLanguagesStruct.Languages) - 1; i +=1)
{
	array_push(LanguageNameArray,Obj_LocalizationManager.AvailableLanguagesStruct.Languages[i].LanguageNameLocal)
}
ds_Menu_SettingsSetup = CreateMenuPage(
["Window Mode",			Menu_ElementType.Toggle,			ChangeWindowMode,					real(global.Fullscreen),				["Window","Full"]					],
["Aspect Ratio",		Menu_ElementType.Shift,				ChangeAspectRatio,					GetAspectRatio(),						["NTSC","PAL"]						],
["Resolution",			Menu_ElementType.Shift,				ChangeResolution,					global.WindowScale - 1,					["1x (384x240)","2x (768x480)","3x (1152x720)","4x (1536x960)","5x (1920x1200)","6x (2304x1440)"]],
["Language",			Menu_ElementType.Shift,				ChangeLanguage,						global.CurrentLanguage,					LanguageNameArray					],
["Subtitles",			Menu_ElementType.Toggle,			ChangeSubtitlesEnabled,				real(global.ShowSubtitles),				["Off","On"]						],
["Confirm",				Menu_ElementType.PageTransfer,		SetupMenu_Page.RemasteredModeSetup	]
);

ds_Menu_RemasteredModeSetup = CreateMenuPage(
["Current Choice",		Menu_ElementType.Toggle,			ChangeRemasteredModeEnabled,	real(global.RemasteredMode),			["Classic Mode","Remastered Mode"]	],
["Confirm",				Menu_ElementType.ScriptRunner,		FirstSetupMenu_Confirm			]

);

Menu_Pages = [ds_Menu_SettingsSetup, ds_Menu_RemasteredModeSetup];
var i = 0, Array_Length = array_length(Menu_Pages);
repeat(Array_Length)
{
	Menu_CurrentEntry[i] = 0;
	i++
}

//Other Variables
IsFading = false;
HasConfirmed = false;
IsInputting = false;
CanChangeControls = true;
NextPage = -1;
PageIndex = SetupMenu_Page.SettingsSetup;

input_ignore_key_remove(vk_alt)
input_ignore_key_remove(vk_lalt)
input_ignore_key_remove(vk_ralt)

ChangeValueAlarm = new Alarm(8, function(){audio_play_sound(Settings_ChangeValue,1000,false)}, true)
FirstChangeDone = false

Settings_Update()

SavedSettings = false