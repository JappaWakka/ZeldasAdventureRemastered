// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ResetPlayerVariables(){
//Player Variables
	global.Name = "ZELDA";
	global.CurrentMap = Maps.Overworld; //To determine which map to display in the inventory
	global.CurrentTile = {x: 6, y: 22};
	global.PlayerSpawn = "Spawn_Overworld";
	
	global.CurrentRubies = 0;
	global.CurrentKeys = 0;
	ds_list_clear(global.Inventory.Treasures)
	ds_list_clear(global.Inventory.Spells)
	ds_list_clear(global.Inventory.CelestialSigns)
	ds_list_clear(global.Register)
	ds_list_clear(global.TempRegister)
	
	global.CurrentHealth = 60;
	global.MaxHealth = 60;
	global.Power = 30;
	global.Defense = 30;
	ds_list_clear(global.VisitedTiles)
	
	global.CurrentItem = [-1,-1]
	global.CurrentTreasure = -1;
	global.CurrentSpell = -1;
	
}