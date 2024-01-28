enum Menu_Page
{
	Main,
	Settings,
	Game,
	Audio,
	Controls
}

enum Menu_ElementType
{
	ScriptRunner,
	PageTransfer,
	Toggle,
	Shift,
	Slider,
	Input
}

enum SaveGames
{
	Save1,
	Save2,
	Save3
}


ds_Menu_Main = CreateMenuPage(
["Save A",				Menu_ElementType.ScriptRunner,		SaveGame_Select			],
["Save B",				Menu_ElementType.ScriptRunner,		SaveGame_Select			],
["Save C",				Menu_ElementType.ScriptRunner,		SaveGame_Select			],
["Play",				Menu_ElementType.ScriptRunner,		SaveGame_Play			],
["Delete",				Menu_ElementType.ScriptRunner,		SaveGame_Delete			],
["Settings",			Menu_ElementType.PageTransfer,		Menu_Page.Settings		],
["Tutorial",			Menu_ElementType.ScriptRunner,		StartTutorial			],
["Exit",				Menu_ElementType.ScriptRunner,		QuitGame				]
);

ds_Menu_Settings = CreateMenuPage(
["Game",				Menu_ElementType.PageTransfer,		Menu_Page.Game			],
["Audio Volume",		Menu_ElementType.PageTransfer,		Menu_Page.Audio			],
["Controls",			Menu_ElementType.PageTransfer,		Menu_Page.Controls		],
["Reset Controls",		Menu_ElementType.ScriptRunner,		Controls_Reset			],
["Save Settings",		Menu_ElementType.ScriptRunner,		Settings_Save			],
["Back",				Menu_ElementType.PageTransfer,		Menu_Page.Main			]
);

ds_Menu_Game = CreateMenuPage(
["Window Mode",			Menu_ElementType.Toggle,			ChangeWindowMode,				0,					["Window","Full"]	],
["Resolution",			Menu_ElementType.Shift,				ChangeResolution,				2,					["1x (384x240)","2x (768x480)","3x (1152x720)","4x (1536x960)","5x (1920x1200)","6x (2304x1440)"]],
["Remastered Mode",		Menu_ElementType.Toggle,			ChangeRemasteredModeEnabled,	0,					["Off","On"]				],
["Subtitles",			Menu_ElementType.Toggle,			ChangeSubtitlesEnabled,			1,					["Off","On"]				],
["Language",			Menu_ElementType.Shift,				ChangeLanguage,					0,					["English","Nederlands"]	],
["Back",				Menu_ElementType.PageTransfer,		Menu_Page.Settings				]
);

ds_Menu_Audio = CreateMenuPage(
["Master",				Menu_ElementType.Slider,			ChangeVolume,			1,					[0,1],					0	],
["Music",				Menu_ElementType.Slider,			ChangeVolume,			1,					[0,1],					1	],
["SoundFX",				Menu_ElementType.Slider,			ChangeVolume,			1,					[0,1],					2	],
["Dialogue",			Menu_ElementType.Slider,			ChangeVolume,			1,					[0,1],					3	],
["Back",				Menu_ElementType.PageTransfer,		Menu_Page.Settings		]
);

ds_Menu_Controls = CreateMenuPage(
["Device to Config",	Menu_ElementType.Toggle,			ChangeConfigDevice,		0,					["Keys","Gamepad"]	],
["Left",				Menu_ElementType.Input,				"left"					],
["Right",				Menu_ElementType.Input,				"right"					],
["Up",					Menu_ElementType.Input,				"up"					],
["Down",				Menu_ElementType.Input,				"down"					],
["Action",				Menu_ElementType.Input,				"action"				],
["Special",				Menu_ElementType.Input,				"special"				],
["Inventory",			Menu_ElementType.Input,				"inventory"				],
["Menu",				Menu_ElementType.Input,				"menu"					],
["Back",				Menu_ElementType.PageTransfer,		Menu_Page.Settings		]
);

ds_Menu_Name = CreateMenuPage(
["A",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["B",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["C",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["D",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["E",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["F",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["G",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["H",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["I",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["J",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["K",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["L",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["M",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["N",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["O",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["P",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["Q",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["R",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["S",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["T",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["U",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["V",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["W",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["X",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["Y",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["Z",				Menu_ElementType.ScriptRunner,		NameEntry_AddChar			],
["Backspace",		Menu_ElementType.ScriptRunner,		NameEntry_RemoveChar		],
["Done",			Menu_ElementType.ScriptRunner,		NameEntry_SaveName			]
);

Menu_Pages = [ds_Menu_Main, ds_Menu_Settings, ds_Menu_Game, ds_Menu_Audio, ds_Menu_Controls, ds_Menu_Name];
var i = 0, Array_Length = array_length(Menu_Pages);
repeat(Array_Length)
{
	Menu_CurrentEntry[i] = 0;
	i++
}

//Other Variables
ConfigDevice = 0; //0 = Keyboard, 1 = Gamepad
IsFading = false;
IsInputting = false;
CanChangeControls = true;
NextPage = -1;
PageIndex = 0;

input_ignore_key_remove(vk_alt)
input_ignore_key_remove(vk_lalt)
input_ignore_key_remove(vk_ralt)

ChangeValueAlarm = new Alarm(8, function(){audio_play_sound(Settings_ChangeValue,1000,false)}, true)
FirstChangeDone = false
ConfirmDelete = 0

InputName = ""

CurrentCharPositionObject = instance_create_layer(88,92,"Instances",Obj_NameEntryMenu_CurrentCharPosition)