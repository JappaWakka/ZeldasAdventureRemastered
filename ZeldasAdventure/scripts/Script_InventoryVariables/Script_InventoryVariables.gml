#macro INVENTORY_SLOTS_TREASURE 40
#macro INVENTORY_SLOTS_TREASURE_CUT 11

#macro INVENTORY_SLOTS_SPELLS 19
#macro INVENTORY_SLOTS_SPELLS_CUT 5

#macro INVENTORY_SLOTS_CELESTIALSIGNS 7

#macro INVENTORY_ROW_LENGTH 6
#macro INVENTORY_SEPARATOR 5

function InventoryList(InventoryIndex)
{
	switch InventoryIndex
	{
	case 0 :
		return global.Inventory.Treasures
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

enum Treasures
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
	GoldenBoots,
	Ladder,
	Bone,
	BlackOrb,
	Plank,
	Coal,
	EmptyPitcher,
	FullPitcher,
	//Cut Content
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
	Boomerang,
	//Cut Content
	Hourglass,
	LeatherBook,
	EnergyOrb,
	OpalAmulet,
	Trident
}

function CastCost(Item)
{
	var Cost = -1
	switch Item
	{
		case Spells.Wand :
			Cost = 0;
			break;
		case Spells.Bow :
			Cost = 1;
			break;
		case Spells.Broadsword :
			Cost = 2;
			break;
		case Spells.Calm :
			Cost = 1;
			break;
		case Spells.Feather :
			Cost = 2;
			break;
		case Spells.RingsOfFire :
			Cost = 3;
			break;
		case Spells.Firestorm :
			Cost = 1;
			break;
		case Spells.GoldNecklace :
			Cost = 2;
			break;
		case Spells.Hammer :
			Cost = 2;
			break;
		case Spells.JadeAmulet :
			Cost = 24;
			break;
		case Spells.Joust :
			Cost = 3;
			break;
		case Spells.JadeRing :
			Cost = 3;
			break;
		case Spells.Dagger :
			Cost = 2;
			break;
		case Spells.Noise :
			Cost = 1;
			break;
		case Spells.Pyros :
			Cost = 4;
			break;
		case Spells.RoarStick :
			Cost = 3;
			break;
		case Spells.ShortAxe :
			Cost = 2;
			break;
		case Spells.SapphireRing :
			Cost = 26;
			break;
		case Spells.Boomerang :
			Cost = 1;
			break;
		case Spells.Hourglass :
			Cost = 0;
			break;
		case Spells.LeatherBook :
			Cost = 0;
			break;
		case Spells.EnergyOrb :
			Cost = 0;
			break;
		case Spells.OpalAmulet :
			Cost = 0;
			break;
		case Spells.Trident :
			Cost = 0;
			break;
	}
	return Cost
};
