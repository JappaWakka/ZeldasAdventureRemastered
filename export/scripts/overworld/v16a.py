# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_sirramBew:
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 0] == 0:
			playVoiceLine(source=self, soundId=1)
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		
		if save[LOCALS + 0] == 1:
			playVoiceLine(source=self, soundId=2)
			save[LOCALS + 0] = 2 # 0x2, b'\x00\x02'
		
		if save[LOCALS + 0] == 2:
			playVoiceLine(source=self, soundId=3)
			save[LOCALS + 0] = 3 # 0x3, b'\x00\x03'
		
	def onLoad_maybe(self):
		playVoiceLine(source=self, soundId=0)
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class item_treasure_vialOfAcid:
	def onTouchOrPushBlockStoppedMoving(self):
		save[VialOfAcid] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[VialOfAcid] < 1:
			nop
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 118 # 0x76, b'\x00v'
		save[CELL_SELF + 1] = 12598 # 0x3136, b'16'
		save[CELL_SELF + 2] = 24832 # 0x6100, b'a\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 118 # 0x76, b'\x00v'
		save[CELL_DOWN + 1] = 12598 # 0x3136, b'16'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		player.x = 130
		player.y = 168
		setSpriteGroup(0) # Usually the sprite for UP
		save[INDOOR_ID] = 1 # 0x1, b'\x00\x01'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'STAGE\x00']],
]
