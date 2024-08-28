# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_hoodedWoman:
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 3] == 0:
			playVoiceLine(source=self, soundId=1)
			save[LOCALS + 3] = 1 # 0x1, b'\x00\x01'
		
		if save[LOCALS + 3] == 1:
			playVoiceLine(source=self, soundId=2)
			save[LOCALS + 3] = 2 # 0x2, b'\x00\x02'
		
	def onLoad_maybe(self):
		if save[GoldenBoots] == 0:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=0)
		
# Actor description 1
# Used for actors: [1]
class item_treasure_goldenBoots:
	def onTouchOrPushBlockStoppedMoving(self):
		save[GoldenBoots] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[GoldenBoots] < 1:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 118 # 0x76, b'\x00v'
		save[CELL_SELF + 1] = 12598 # 0x3136, b'16'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 118 # 0x76, b'\x00v'
		save[CELL_UP + 1] = 12597 # 0x3135, b'15'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 118 # 0x76, b'\x00v'
		save[CELL_DOWN + 1] = 12599 # 0x3137, b'17'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 119 # 0x77, b'\x00w'
		save[CELL_RIGHT + 1] = 12598 # 0x3136, b'16'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 117 # 0x75, b'\x00u'
		save[CELL_LEFT + 1] = 12598 # 0x3136, b'16'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		setLocationOnMap(v15)
		
		if save[INDOOR_ID] == 1:
			save[INDOOR_ID] = 0 # 0x0, b'\x00\x00'
			player.x = 158
			player.y = 130
			setSpriteGroup(2) # Usually the sprite for DOWN
		
	def onTouchTrigger(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
# Local variables
local0 = 118 # 0x76, b'\x00v'
local1 = 12598 # 0x3136, b'16'
local2 = 24934 # 0x6166, b'af'
local3 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00', b'STAGE\x00']],
]
