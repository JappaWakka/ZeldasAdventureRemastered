#macro INVENTORY_SLOTS_TREASURE 40
#macro INVENTORY_SLOTS_TREASURE_CUT 11

#macro INVENTORY_SLOTS_SPELLS 19
#macro INVENTORY_SLOTS_SPELLS_CUT 5

#macro INVENTORY_SLOTS_CELESTIALSIGNS 7

#macro INVENTORY_ROW_LENGTH 6
#macro INVENTORY_SEPARATOR 5

function InventoryArray(InventoryIndex)
{
	switch InventoryIndex
	{
	case 0 :
		return global.Inventory.Treasure
		break
	case 1 :
		return global.Inventory.Spells
		break
	case 2 :
		return global.Inventory.CelestialSigns
		break
	}
	return -1
	
}
function ItemIndex(InventoryIndex)
{
	switch InventoryIndex
	{
	case 0 :
		return global.Treasure_Index
		break
	case 1 :
		return global.Spells_Index
		break
	case 2 :
		return global.CelestialSigns_Index
		break
	}
	return -1
	
}

enum CelestialSigns
{
	Earth,
	Illusion,
	Air,
	Destiny,
	Water,
	Strength,
	Fire
}

enum Treasure
{
	Flowers,
	Ticket1,
	Candle,
	Compass_Earth,
	Compass_Illusion,
	Compass_Air,
	Compass_Destiny,
	Compass_Water,
	Compass_Strength,
	Compass_Fire,
	Diamond,
	Flute,
	Knife,
	Harp,
	Ticket2,
	Potion,
	UnderworldMap_Earth,
	UnderworldMap_Illusion,
	UnderworldMap_Air,
	UnderworldMap_Destiny,
	UnderworldMap_Water,
	UnderworldMap_Strength,
	UnderworldMap_Fire,
	Carpet,
	MagicShield,
	Bell,
	Raft,
	RedBoots,
	Repellant,
	RedRibbon,
	Rubies,
	VialOfWind,
	YellowBoots,
	Ladder,
	Bone,
	BlackOrb,
	Plank,
	Coal,
	EmptyPitcher,
	FullPitcher
}

enum Treasure_Cut
{
	VialOfAcid,
	AlligatorShoes,
	BrownJar,
	Brush,
	RawSteak,
	GoldTrumpet,
	FishingNet,
	WhiteOrbs,
	Scroll,
	WoodenSpoon,
	SilverTrumpet
}

global.CelestialSigns_Index =
[
	CelestialSigns.Earth,
	CelestialSigns.Illusion,
	CelestialSigns.Air,
	CelestialSigns.Destiny,
	CelestialSigns.Water,
	CelestialSigns.Strength,
	CelestialSigns.Fire
]
global.Treasure_Index =
[
	Treasure.Flowers,
	Treasure.Ticket1,
	Treasure.Candle,
	Treasure.Compass_Earth,
	Treasure.Compass_Illusion,
	Treasure.Compass_Air,
	Treasure.Compass_Destiny,
	Treasure.Compass_Water,
	Treasure.Compass_Strength,
	Treasure.Compass_Fire,
	Treasure.Diamond,
	Treasure.Flute,
	Treasure.Knife,
	Treasure.Harp,
	Treasure.Ticket2,
	Treasure.Potion,
	Treasure.UnderworldMap_Earth,
	Treasure.UnderworldMap_Illusion,
	Treasure.UnderworldMap_Air,
	Treasure.UnderworldMap_Destiny,
	Treasure.UnderworldMap_Water,
	Treasure.UnderworldMap_Strength,
	Treasure.UnderworldMap_Fire,
	Treasure.Carpet,
	Treasure.MagicShield,
	Treasure.Bell,
	Treasure.Raft,
	Treasure.RedBoots,
	Treasure.Repellant,
	Treasure.RedRibbon,
	Treasure.Rubies,
	Treasure.VialOfWind,
	Treasure.YellowBoots,
	Treasure.Ladder,
	Treasure.Bone,
	Treasure.BlackOrb,
	Treasure.Plank,
	Treasure.Coal,
	Treasure.EmptyPitcher,
	Treasure.FullPitcher,
	Treasure_Cut.VialOfAcid,
	Treasure_Cut.AlligatorShoes,
	Treasure_Cut.BrownJar,
	Treasure_Cut.Brush,
	Treasure_Cut.RawSteak,
	Treasure_Cut.GoldTrumpet,
	Treasure_Cut.FishingNet,
	Treasure_Cut.WhiteOrbs,
	Treasure_Cut.Scroll,
	Treasure_Cut.WoodenSpoon,
	Treasure_Cut.SilverTrumpet
]


enum Spells
{
	Wand,
	Bow,
	Broadsword,
	Calm,
	Feather,
	RingsOfFire,
	Firestorm,
	GoldNecklace,
	Hammer,
	JadeAmulet,
	Joust,
	JadeRing,
	Dagger,
	Noise,
	Pyros,
	RoarStick,
	ShortAxe,
	SapphireRing,
	Boomerang
}

enum Spells_Cut
{
	Hourglass,
	LeatherBook,
	EnergyOrb,
	OpalAmulet,
	Trident
}

global.Spells_Index =
[
	Spells.Wand,
	Spells.Bow,
	Spells.Broadsword,
	Spells.Calm,
	Spells.Feather,
	Spells.RingsOfFire,
	Spells.Firestorm,
	Spells.GoldNecklace,
	Spells.Hammer,
	Spells.JadeAmulet,
	Spells.Joust,
	Spells.JadeRing,
	Spells.Dagger,
	Spells.Noise,
	Spells.Pyros,
	Spells.RoarStick,
	Spells.ShortAxe,
	Spells.SapphireRing,
	Spells.Boomerang,
	Spells_Cut.Hourglass,
	Spells_Cut.LeatherBook,
	Spells_Cut.EnergyOrb,
	Spells_Cut.OpalAmulet,
	Spells_Cut.Trident
]

