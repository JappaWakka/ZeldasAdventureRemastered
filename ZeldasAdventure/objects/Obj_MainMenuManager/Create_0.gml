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

//Check for existence of Save Data and generate if they don't exist
Script_GenerateSaveDataFile()
for (var i = 1; i <= array_length(global.SavePlayerNames); i++)
{
	ini_open(global.SaveDataFileName)
	var SaveName = ini_read_string("Save" & i, "Name", "[DEFAULT]")
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
["Settings",			Menu_ElementType.PageTransfer,		ChangePage,				Menu_Page.Settings		],
["Exit",				Menu_ElementType.ScriptRunner,		QuitGame				]
);

ds_Menu_Settings = CreateMenuPage(
["Game",				Menu_ElementType.PageTransfer,		ChangePage,				Menu_Page.Game			],
["Audio",				Menu_ElementType.PageTransfer,		ChangePage,				Menu_Page.Audio			],
["Controls",			Menu_ElementType.PageTransfer,		ChangePage,				Menu_Page.Controls		],
["Back",				Menu_ElementType.PageTransfer,		ChangePage,				Menu_Page.Main			]
);

ds_Menu_Game = CreateMenuPage(
["Window Mode",			Menu_ElementType.Toggle,			SetWindowMode,			0,					["Windowed","Fullscreen"]	],
["Resolution",			Menu_ElementType.Shift,				SetResolution,			2,					["1x (384x240)","2x (768x480)","3x (1152x720)","4x (1536x960)","5x (1920x1200)","6x (2304x1440)"]],
["Remastered Mode",		Menu_ElementType.Toggle,			RemasteredModeEnabled,	0,					["Off","On"]				],
["Subtitles",			Menu_ElementType.Toggle,			SubtitlesEnabled,		1,					["Off","On"]				],
["Language",			Menu_ElementType.Shift,				SetLanguage,			0,					["English","Nederlands"]	],
["Back",				Menu_ElementType.PageTransfer,		ChangePage,				Menu_Page.Main		]
);

ds_Menu_Audio = CreateMenuPage(
["Master",				Menu_ElementType.Slider,			ChangeVolume,			1,					[0,1],					0	],
["Music",				Menu_ElementType.Slider,			ChangeVolume,			1,					[0,1],					1	],
["SoundFX",				Menu_ElementType.Slider,			ChangeVolume,			1,					[0,1],					2	],
["Dialogue",			Menu_ElementType.Slider,			ChangeVolume,			1,					[0,1],					3	],
["Back",				Menu_ElementType.PageTransfer,		ChangePage,				Menu_Page.Main		]
);

ds_Menu_Controls = CreateMenuPage(
["ConfigDevice",		Menu_ElementType.Toggle,			SetConfigDevice,		["Keyboard","Gamepad"]	],
["Left",				Menu_ElementType.Input,				SetInput,				"Left",				vk_left,					gp_padl		],
["Right",				Menu_ElementType.Input,				SetInput,				"Right",			vk_right,					gp_padr		],
["Up",					Menu_ElementType.Input,				SetInput,				"Up",				vk_up,						gp_padr		],
["Down",				Menu_ElementType.Input,				SetInput,				"Down",				vk_down,					gp_padd		],
["Action",				Menu_ElementType.Input,				SetInput,				"Action",			vk_control,					gp_face1	],
["Special",				Menu_ElementType.Input,				SetInput,				"Special",			vk_alt,						gp_face2	],
["Inventory",			Menu_ElementType.Input,				SetInput,				"Inventory",		vk_space,					gp_face3	],
["Menu",				Menu_ElementType.Input,				SetInput,				"Menu",				vk_escape,					gp_start	],
["Back",				Menu_ElementType.PageTransfer,		ChangePage,				Menu_Page.Main		]
);

PageIndex = 0;
Menu_Pages = [ds_Menu_Main, ds_Menu_Settings, ds_Menu_Game, ds_Menu_Audio, ds_Menu_Controls];
var i = 0, Array_Length = array_length(Menu_Pages);
repeat(Array_Length)
{
	Menu_CurrentEntry[i] = 0;
	i++
}