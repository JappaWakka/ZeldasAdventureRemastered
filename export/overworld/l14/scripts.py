# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_ericAndIan:
	def onTouch(self):
		if save[LOCALS + 5] == 0 and save[LOCALS + 7] == 0:
			save[LOCALS + 5] = 1 # 0x1, b'\x00\x01'
			playVoiceLine(source=self, soundId=0)
			save[LOCALS + 7] = 1 # 0x1, b'\x00\x01'
		
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 3] == 0:
			save[LOCALS + 3] = 1 # 0x1, b'\x00\x01'
			playVoiceLine(source=self, soundId=1)
		
		if save[LOCALS + 3] == 1:
			save[LOCALS + 3] = 2 # 0x2, b'\x00\x02'
			playVoiceLine(source=self, soundId=2)
		
		save[LOCALS + 7] = 0 # 0x0, b'\x00\x00'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class npc_yvonne:
	def onTouch(self):
		if save[LOCALS + 6] == 0 and save[LOCALS + 7] == 0:
			save[LOCALS + 6] = 1 # 0x1, b'\x00\x01'
			playVoiceLine(source=self, soundId=3)
			save[LOCALS + 7] = 1 # 0x1, b'\x00\x01'
		
	def onItemInteractOrSoundFileDone(self):
		save[LOCALS + 7] = 0 # 0x0, b'\x00\x00'
		
		if save[LOCALS + 4] == 0 and save[Flute] == 0:
			save[LOCALS + 4] = 1 # 0x1, b'\x00\x01'
			playVoiceLine(source=self, soundId=4)
			op12_0x2cd0(actor=cast[3])
			save[Flute] = 2 # 0x2, b'\x00\x02'
		
	def onLoad_maybe(self):
		if save[Flute] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: [3]
class item_treasure_flute:
	def onTouch(self):
		save[Flute] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[Flute] == 2:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 108 # 0x6c, b'\x00l'
		save[CELL_SELF + 1] = 12596 # 0x3134, b'14'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 108 # 0x6c, b'\x00l'
		save[CELL_UP + 1] = 12595 # 0x3133, b'13'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 108 # 0x6c, b'\x00l'
		save[CELL_DOWN + 1] = 12597 # 0x3135, b'15'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 109 # 0x6d, b'\x00m'
		save[CELL_RIGHT + 1] = 12596 # 0x3134, b'14'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 107 # 0x6b, b'\x00k'
		save[CELL_LEFT + 1] = 12596 # 0x3134, b'14'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		setLocationOnMap(l13)
		
		if save[INDOOR_ID] == 1:
			save[INDOOR_ID] = 0 # 0x0, b'\x00\x00'
			setSpriteGroup(2) # Usually the sprite for DOWN
			player.x = 208
			player.y = 124
		
	def onTouchTrigger(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
# Local variables
local0 = 108 # 0x6c, b'\x00l'
local1 = 12596 # 0x3134, b'14'
local2 = 24934 # 0x6166, b'af'
local3 = 0 # 0x0, b'\x00\x00'
local4 = 0 # 0x0, b'\x00\x00'
local5 = 0 # 0x0, b'\x00\x00'
local6 = 0 # 0x0, b'\x00\x00'
local7 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00', b'TSTAGE\x00\x00', b'YSTAGE\x00\x00', b'TWINSCON\x00\x00', b'YVONNECON\x00', b'TALK\x00\x00']],
]
