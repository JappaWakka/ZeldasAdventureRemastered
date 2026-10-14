///Add Celestial Sign to Inventory
Item_Add(CelestialSigns.Illusion,2)
IncreaseDefenseAndPower()
FillHP(false,true)
IncreaseMaxHealth()
global.StartCutscene = "Shrine_Illusion"
global.FadeProgress = 0
instance_destroy()