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

//Fetch the Save Game names from the Save Data
for (var i = 1; i <= 3; i++)
{
	ini_open(global.SaveDataFileName)
	var Section = "Save"string(i)
	var SaveName = ini_read_string(Section, "Name", "[DEFAULT]")
	if SaveName != "[DEFAULT]" && SaveName != ""
	{
		global.SavePlayerNames[i] = SaveName
	}
	else
	{
		global.SavePlayerNames[i] = "EMPTY"
	}
	ini_close()
}

ds_Menu_Main = CreateMenuPage(
["Save A",				Menu_ElementType.ScriptRunner,		SaveGame_Select,		SaveGames.Save1			],
["Save B",				Menu_ElementType.ScriptRunner,		SaveGame_Select,		SaveGames.Save2			],
["Save C",				Menu_ElementType.ScriptRunner,		SaveGame_Select,		SaveGames.Save3			],
["Play",				Menu_ElementType.ScriptRunner,		SaveGame_Play			],
["Delete",				Menu_ElementType.ScriptRunner,		SaveGame_Delete			],
["Tutorial",			Menu_ElementType.ScriptRunner,		StartTutorial			],
["Settings",			Menu_ElementType.PageTransfer,		Menu_Page.Settings		],
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
["Window Mode",			Menu_ElementType.Toggle,			SetWindowMode,			0,					["Window","Full"]	],
["Resolution",			Menu_ElementType.Shift,				SetResolution,			2,					["1x (384x240)","2x (768x480)","3x (1152x720)","4x (1536x960)","5x (1920x1200)","6x (2304x1440)"]],
["Remastered Mode",		Menu_ElementType.Toggle,			RemasteredModeEnabled,	0,					["Off","On"]				],
["Subtitles",			Menu_ElementType.Toggle,			SubtitlesEnabled,		1,					["Off","On"]				],
["Language",			Menu_ElementType.Shift,				SetLanguage,			0,					["English","Nederlands"]	],
["Back",				Menu_ElementType.PageTransfer,		Menu_Page.Settings		]
);

ds_Menu_Audio = CreateMenuPage(
["Master",				Menu_ElementType.Slider,			ChangeVolume,			1,					[0,1],					0	],
["Music",				Menu_ElementType.Slider,			ChangeVolume,			1,					[0,1],					1	],
["SoundFX",				Menu_ElementType.Slider,			ChangeVolume,			1,					[0,1],					2	],
["Dialogue",			Menu_ElementType.Slider,			ChangeVolume,			1,					[0,1],					3	],
["Back",				Menu_ElementType.PageTransfer,		Menu_Page.Settings		]
);

ds_Menu_Controls = CreateMenuPage(
["Device to Config",	Menu_ElementType.Toggle,			SetConfigDevice,		0,					["Keys","Gamepad"]	],
["left",				Menu_ElementType.Input,				"Left",					input_binding_get("left",,,"keyboard_and_mouse"),			input_binding_get("left",,,"gamepad"),	],
["right",				Menu_ElementType.Input,				"Right",				input_binding_get("right",,,"keyboard_and_mouse"),			input_binding_get("right",,,"gamepad"),	],
["Up",					Menu_ElementType.Input,				"Up",					input_binding_get("up",,,"keyboard_and_mouse"),			input_binding_get("up",,,"gamepad"),	],
["Down",				Menu_ElementType.Input,				"Down",					input_binding_get("down",,,"keyboard_and_mouse"),			input_binding_get("down",,,"gamepad"),	],
["Action",				Menu_ElementType.Input,				"Action",				input_binding_get("action",,,"keyboard_and_mouse"),			input_binding_get("action",,,"gamepad"),	],
["Special",				Menu_ElementType.Input,				"Special",				input_binding_get("special",,,"keyboard_and_mouse"),			input_binding_get("special",,,"gamepad"),	],
["Inventory",			Menu_ElementType.Input,				"Inventory",			input_binding_get("inventory",,,"keyboard_and_mouse"),			input_binding_get("inventory",,,"gamepad"),	],
["Menu",				Menu_ElementType.Input,				"Menu",					input_binding_get("menu",,,"keyboard_and_mouse"),			input_binding_get("menu",,,"gamepad"),	],
["Back",				Menu_ElementType.PageTransfer,		Menu_Page.Settings		]
);

Menu_Pages = [ds_Menu_Main, ds_Menu_Settings, ds_Menu_Game, ds_Menu_Audio, ds_Menu_Controls];
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
CanChangeControls = false;
NextPage = -1;
PageIndex = 0;

