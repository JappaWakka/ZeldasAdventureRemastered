# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_unknownActor118:
	def onItemInteractOrSoundFileDone(self):
		if save[HAS_ENTERED_WHITE_STEED_LODGE] == 0 and save[LOCALS + 3] == 0:
			playVoiceLine(source=self, soundId=1)
			save[LOCALS + 3] = 1 # 0x1, b'\x00\x01'
		
		if save[HAS_ENTERED_WHITE_STEED_LODGE] == 1 and save[Feather] == 0 and save[LOCALS + 3] == 0:
			op12_0x2cd0(actor=cast[3])
			save[LOCALS + 3] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		if save[Feather] == 0:
			spawnAndAnimate(actor=self)
		
		if save[HAS_ENTERED_WHITE_STEED_LODGE] == 1 and save[Feather] == 0:
			playVoiceLine(source=self, soundId=2)
		
		if save[HAS_ENTERED_WHITE_STEED_LODGE] == 0 and save[Feather] == 0:
			playVoiceLine(source=self, soundId=0)
		
# Actor description 1
# Used for actors: [1, 2]
class npc_horse:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: []
class item_treasure_blackKey:
	def onTouch(self):
		save[KEY_COUNT] += 1
		showSparklesAndDespawn(actor=self)
		
# Actor description 3
# Used for actors: [3]
class item_treasure_feather:
	def onTouch(self):
		save[Feather] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 110 # 0x6e, b'\x00n'
		save[CELL_SELF + 1] = 12593 # 0x3131, b'11'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 110 # 0x6e, b'\x00n'
		save[CELL_UP + 1] = 12592 # 0x3130, b'10'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 110 # 0x6e, b'\x00n'
		save[CELL_DOWN + 1] = 12594 # 0x3132, b'12'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 111 # 0x6f, b'\x00o'
		save[CELL_RIGHT + 1] = 12593 # 0x3131, b'11'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 109 # 0x6d, b'\x00m'
		save[CELL_LEFT + 1] = 12593 # 0x3131, b'11'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		setLocationOnMap(n10)
		
		if save[INDOOR_ID] == 1:
			save[INDOOR_ID] = 0 # 0x0, b'\x00\x00'
			player.x = 208
			player.y = 80
			setSpriteGroup(2) # Usually the sprite for DOWN
		
	def onTouchTrigger(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
# Local variables
local0 = 110 # 0x6e, b'\x00n'
local1 = 12593 # 0x3131, b'11'
local2 = 24934 # 0x6166, b'af'
local3 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00', b'STAGE\x00']],
]
