function UI_Inventory_Text(TextIndex)
{
	if TextIndex = 0 {return Localize.UI.InventoryMenu.TreasuresCategory} //"TREASURES"
	else if TextIndex = 1 {return Localize.UI.InventoryMenu.WeaponsCategory} //"WEAPONS"
	else if TextIndex = 2 {return Localize.UI.InventoryMenu.MapButton} //"Map"
	else if TextIndex = 3 {return Localize.UI.InventoryMenu.ExitButton} //"Exit"
}