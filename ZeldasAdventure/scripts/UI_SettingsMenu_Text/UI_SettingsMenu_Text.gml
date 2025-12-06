function UI_SettingsMenu_Text(MenuIndex,TextIndex,OptionIndex = -1)
{
	switch global.CurrentLanguage
	{
	case "en":
		switch MenuIndex
		{
			case 1: //Settings - Main
				if TextIndex = 0 {return "Game"}
				if TextIndex = 1 {return "Audio Volume"}
				if TextIndex = 2 {return "Controls"}
				if TextIndex = 3 {return "Reset Settings"}
				if TextIndex = 4 {return "Save Settings"}
				if TextIndex = 5 {return "Back"}
				break;
			case 2: //Settings - Game
				if TextIndex = 0
				{
					if OptionIndex = -1 {return "Window Mode"}
					if OptionIndex = 0 {return "Window"}
					if OptionIndex = 1 {return "Full"}
				}
				if TextIndex = 1
				{
					if OptionIndex = -1 {return "Resolution"}
					if OptionIndex = 0 {return "1x (384x240)"}
					if OptionIndex = 1 {return "2x (768x480)"}
					if OptionIndex = 2 {return "3x (1152x720)"}
					if OptionIndex = 3 {return "4x (1536x960)"}
					if OptionIndex = 4 {return "5x (1920x1200)"}
					if OptionIndex = 5 {return "6x (2304x1440)"}
				}
				if TextIndex = 2
				{
					if OptionIndex = -1 {return "Remastered Mode"}
					if OptionIndex = 0 {return "Off"}
					if OptionIndex = 1 {return "On"}
				}
				if TextIndex = 3 
				{
					if OptionIndex = -1 {return "Subtitles"}
					if OptionIndex = 0 {return "Off"}
					if OptionIndex = 1 {return "On"}
				}
				if TextIndex = 4
				{
					if OptionIndex = -1 {return "Language"}
					if OptionIndex = 0 {return "English"}
					if OptionIndex = 1 {return "Nederlands"}
					if OptionIndex = 2 {return "Français"}
				}
				else if TextIndex = 5 {return "Back"}
				break;
			case 3: //Settings - Audio
				if TextIndex = 0 {return "Master"}
				if TextIndex = 1 {return "Music"}
				if TextIndex = 2 {return "SoundFX"}
				if TextIndex = 3 {return "Dialogue"}
				if TextIndex = 4 {return "Back"}
				break;
			case 4: //Settings - Controls
				if TextIndex = 0
				{
					if OptionIndex = -1 {return "Device to Config"}
					if OptionIndex = 0 {return "Keys"}
					if OptionIndex = 1 {return "Gamepad"}
				}
				if TextIndex = 1 {return "Left"}
				if TextIndex = 2 {return "Right"}
				if TextIndex = 3 {return "Up"}
				if TextIndex = 4 {return "Down"}
				if TextIndex = 5 {return "Action 1/Accept"}
				if TextIndex = 6 {return "Action 2/Cancel"}
				if TextIndex = 7 {return "Inventory"}
				if TextIndex = 8 {return "Map"}
				if TextIndex = 9 {return "Menu"}
				if TextIndex = 10 {return "Back"}
				if TextIndex = 11 {return "left"}
				if TextIndex = 12 {return "right"}
				if TextIndex = 13 {return "up"}
				if TextIndex = 14 {return "down"}
				if TextIndex = 15 {return "click"}
				if TextIndex = 16 {return "escape"}
				if TextIndex = 17 {return "enter"}
				if TextIndex = 18 {return "arrow"}
				break;
		}
	break;
		
	case "nl":
		switch MenuIndex
		{
			case 1: //Settings - Main
				if TextIndex = 0 {return "Spel"}
				if TextIndex = 1 {return "Geluidsvolume"}
				if TextIndex = 2 {return "Besturing"}
				if TextIndex = 3 {return "Herstel Opties"}
				if TextIndex = 4 {return "Opties Opslaan"}
				if TextIndex = 5 {return "Terug"}
				break;
			case 2: //Settings - Game
				if TextIndex = 0
				{
					if OptionIndex = -1 {return "Schermmodus"}
					if OptionIndex = 0 {return "Venster"}
					if OptionIndex = 1 {return "Volledig"}
				}
				if TextIndex = 1
				{
					if OptionIndex = -1 {return "Resolutie"}
					if OptionIndex = 0 {return "1x (384x240)"}
					if OptionIndex = 1 {return "2x (768x480)"}
					if OptionIndex = 2 {return "3x (1152x720)"}
					if OptionIndex = 3 {return "4x (1536x960)"}
					if OptionIndex = 4 {return "5x (1920x1200)"}
					if OptionIndex = 5 {return "6x (2304x1440)"}
				}
				if TextIndex = 2
				{
					if OptionIndex = -1 {return "Remaster-Modus"}
					if OptionIndex = 0 {return "Uit"}
					if OptionIndex = 1 {return "Aan"}
				}
				if TextIndex = 3 
				{
					if OptionIndex = -1 {return "Ondertiteling"}
					if OptionIndex = 0 {return "Uit"}
					if OptionIndex = 1 {return "Aan"}
				}
				if TextIndex = 4
				{
					if OptionIndex = -1 {return "Taal"}
					if OptionIndex = 0 {return "English"}
					if OptionIndex = 1 {return "Nederlands"}
				}
				if TextIndex = 5 {return "Terug"}
				break;
			case 3: //Settings - Audio
				if TextIndex = 0 {return "Hoofdvolume"}
				if TextIndex = 1 {return "Muziek"}
				if TextIndex = 2 {return "Geluiden"}
				if TextIndex = 3 {return "Dialoog"}
				if TextIndex = 4 {return "Terug"}
				break;
			case 4: //Settings - Controls
				if TextIndex = 0
				{
					if OptionIndex = -1 {return "Instelapparaat"}
					if OptionIndex = 0 {return "Toetsen"}
					if OptionIndex = 1 {return "Gamepad"}
				}
				if TextIndex = 1 {return "Links"}
				if TextIndex = 2 {return "Rechts"}
				if TextIndex = 3 {return "Omhoog"}
				if TextIndex = 4 {return "Omlaag"}
				if TextIndex = 5 {return "Actie 1/Bevestig"}
				if TextIndex = 6 {return "Actie 2/Annuleer"}
				if TextIndex = 7 {return "Inventaris"}
				if TextIndex = 8 {return "Kaart"}
				if TextIndex = 9 {return "Menu"}
				if TextIndex = 10 {return "Terug"}
				if TextIndex = 11 {return "links"}
				if TextIndex = 12 {return "rechts"}
				if TextIndex = 13 {return "omhoog"}
				if TextIndex = 14 {return "omlaag"}
				if TextIndex = 15 {return "klik"}
				if TextIndex = 16 {return "escape"}
				if TextIndex = 17 {return "enter"}
				if TextIndex = 18 {return "pijl"}
				break;
		}
		break;
		
	case "fr":
		switch MenuIndex
		{
			case 1: //Settings - Main
				if TextIndex = 0 {return "Jeu"}
				if TextIndex = 1 {return "Volume"}
				if TextIndex = 2 {return "Contrôles"}
				if TextIndex = 3 {return "Réinitiliser"}
				if TextIndex = 4 {return "Sauvegarder"}
				if TextIndex = 5 {return "Retour"}
				break;
			case 2: //Settings - Game
				if TextIndex = 0
				{
					if OptionIndex = -1 {return "Écran Mode"}
					if OptionIndex = 0 {return "Fenêtré"}
					if OptionIndex = 1 {return "Plein"}
				}
				if TextIndex = 1
				{
					if OptionIndex = -1 {return "Résolution"}
					if OptionIndex = 0 {return "1x (384x240)"}
					if OptionIndex = 1 {return "2x (768x480)"}
					if OptionIndex = 2 {return "3x (1152x720)"}
					if OptionIndex = 3 {return "4x (1536x960)"}
					if OptionIndex = 4 {return "5x (1920x1200)"}
					if OptionIndex = 5 {return "6x (2304x1440)"}
				}
				if TextIndex = 2
				{
					if OptionIndex = -1 {return "Mode Remastérisé"}
					if OptionIndex = 0 {return "Non"}
					if OptionIndex = 1 {return "Oui"}
				}
				if TextIndex = 3 
				{
					if OptionIndex = -1 {return "Sous-titres"}
					if OptionIndex = 0 {return "Non"}
					if OptionIndex = 1 {return "Oui"}
				}
				if TextIndex = 4
				{
					if OptionIndex = -1 {return "Langue"}
					if OptionIndex = 0 {return "English"}
					if OptionIndex = 1 {return "Nederlands"}
					if OptionIndex = 2 {return "Français"}
				}
				else if TextIndex = 5 {return "Retour"}
				break;
			case 3: //Settings - Audio
				if TextIndex = 0 {return "Général"}
				if TextIndex = 1 {return "Musique"}
				if TextIndex = 2 {return "Effets Sonores"}
				if TextIndex = 3 {return "Dialogue"}
				if TextIndex = 4 {return "Retour"}
				break;
			case 4: //Settings - Controls
				if TextIndex = 0
				{
					if OptionIndex = -1 {return "Contrôleur"}
					if OptionIndex = 0 {return "Clavier"}
					if OptionIndex = 1 {return "Manette"}
				}
				if TextIndex = 1 {return "Gauche"}
				if TextIndex = 2 {return "Droite"}
				if TextIndex = 3 {return "Haut"}
				if TextIndex = 4 {return "Bas"}
				if TextIndex = 5 {return "Action 1/Valider"}
				if TextIndex = 6 {return "Action 2/Annuler"}
				if TextIndex = 7 {return "Inventaire"}
				if TextIndex = 8 {return "Carte"}
				if TextIndex = 9 {return "Menu"}
				if TextIndex = 10 {return "Retour"}
				if TextIndex = 11 {return "gauche"}
				if TextIndex = 12 {return "droite"}
				if TextIndex = 13 {return "haut"}
				if TextIndex = 14 {return "bas"}
				if TextIndex = 15 {return "clic"}
				if TextIndex = 16 {return "échap"}
				if TextIndex = 17 {return "entrée"}
				if TextIndex = 18 {return "flèche"}
				break;
		}
		break;
	}
}

function UI_SettingsMenu_Tooltip(MenuIndex,TextIndex)
{
	switch global.CurrentLanguage
	{
		case "en":
			switch MenuIndex
			{
				case 2: //Settings - Game
				if TextIndex = 2
				{
					return "Action 1 = Use Weapon, Action 2 = Use Treasure, Restored cut content, Action Button 2 replaces Ruby item etc."
				}
				break
			}
			return ""
			break;
			
		case "nl":
			switch MenuIndex
			{
				case 2: //Settings - Game
				if TextIndex = 2
				{
					return "Actie 1 = Gebruik Wapen, Actie 2 = Gebruik Schat, Herstelde ongebruikte inhoud, Actieknop 2 vervangt Robijn voorwerp etc."
				}
				break
			}
			return ""
			break;
			
		case "fr":
			switch MenuIndex
			{
				case 2: //Settings - Game
				if TextIndex = 2
				{
					return "Action 1 = Utiliser une arme, Action 2 = Utiliser un trésor, Fonction restaurée, le bouton Action 2 remplace l'objet Ruby, etc."
				}
				break;
			}
			return ""
			break
	}
}