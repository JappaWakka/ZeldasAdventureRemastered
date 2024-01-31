# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_thirstyChild:
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 1] == 0 and save[LOCALS + 2] == 0:
			save[LOCALS + 2] = 1 # 0x1, b'\x00\x01'
		
		if save[LOCALS + 1] == 0 and save[LOCALS + 0] == 1:
			op12_0x2cd0(actor=cast[1])
		
	def onLoad_maybe(self):
		if save[GoldNecklace] == 0:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=0)
		
# Actor description 1
# Used for actors: [1]
class item_weapon_goldNecklace:
	def onTouch(self):
		save[GoldNecklace] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29494 # 0x7336, b's6'
		save[CELL_SELF + 1] = 12341 # 0x3035, b'05'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29494 # 0x7336, b's6'
		save[CELL_RIGHT + 1] = 12342 # 0x3036, b'06'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 29494 # 0x7336, b's6'
		save[CELL_LEFT + 1] = 12340 # 0x3034, b'04'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 5 # 0x5, b'\x00\x05'
		
	def onTouchTrigger(self):
		if save[LOCALS + 1] == 0 and save[LOCALS + 2] == 1 and save[LOCALS + 0] == 0 and save[GoldNecklace] == 0:
			playVoiceLine(source=cast[0], soundId=1)
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 0 # 0x0, b'\x00\x00'
local2 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'HELP\x00\x00', b'DONE\x00\x00', b'STAGE\x00']],
]
