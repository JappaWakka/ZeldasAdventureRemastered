///Add Celestial Sign to Inventory
Item_Add(CelestialSigns.Earth,2)
IncreaseDefenseAndPower()
FillHP(false,true)
IncreaseMaxHealth()
global.StartCutscene = "Shrine_Earth"
global.FadeProgress = 0
instance_destroy()