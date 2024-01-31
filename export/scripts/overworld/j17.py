# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_ghostFarmer:
	def onTouch(self):
		if save[LOCALS + 0] == 0:
			playVoiceLine(source=self, soundId=0)
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		
	def onItemInteractOrSoundFileDone(self):
		showSparklesAndDespawn(actor=self)
		spawnAndAnimate(actor=cast[1])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class npc_ghostFarmer:
	def onTouch(self):
		if save[LOCALS + 1] == 0:
			playVoiceLine(source=self, soundId=2)
			save[LOCALS + 1] = 1 # 0x1, b'\x00\x01'
		
	def onItemInteractOrSoundFileDone(self):
		showSparklesAndDespawn(actor=self)
		spawnAndAnimate(actor=cast[2])
		
# Actor description 2
# Used for actors: [2]
class npc_ghostFarmer:
	def onTouch(self):
		if save[LOCALS + 2] == 0:
			playVoiceLine(source=self, soundId=2)
			save[LOCALS + 2] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_SELF + 1] = 12599 # 0x3137, b'17'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_UP + 1] = 12598 # 0x3136, b'16'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 107 # 0x6b, b'\x00k'
		save[CELL_RIGHT + 1] = 12599 # 0x3137, b'17'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		
	def onTouchTrigger(self):
		if save[RedBoots] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 0 # 0x0, b'\x00\x00'
local2 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'CON\x00', b'CON1\x00\x00', b'CON2\x00\x00']],
]
