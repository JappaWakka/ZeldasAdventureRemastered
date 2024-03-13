ds_Menu_Exit = CreateMenuPage(
["Save & Quit",				ExitMenu_SaveAndQuit		],
["Quit Without Save",		ExitMenu_QuitWithoutSave	],
["Return To Game",			ExitMenu_ReturnToGame		],
);

CurrentEntry = 0;

//Other Variables
OpeningClosing = false;
QuitToMainMenu = false;
Alpha = 0;
