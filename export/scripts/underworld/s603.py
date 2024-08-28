# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_unknownActor323:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 0] == 0:
			rupees -= 25
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class npc_stallOwner2:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 1] == 0 and save[LOCALS + 4] == 0:
			playVoiceLine(source=self, soundId=0)
			save[LOCALS + 1] = 1 # 0x1, b'\x00\x01'
			save[LOCALS + 4] = 1 # 0x1, b'\x00\x01'
		
	def onItemInteractOrSoundFileDone(self):
		save[LOCALS + 4] = 0 # 0x0, b'\x00\x00'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class npc_unknownActor325:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 3] == 0 and save[LOCALS + 4] == 0:
			playVoiceLine(source=self, soundId=3)
			save[LOCALS + 4] = 1 # 0x1, b'\x00\x01'
		
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 3] == 0 and save[Compass6] == 0:
			op12_0x2cd0(actor=cast[3])
		
		save[LOCALS + 3] += 1
		save[LOCALS + 4] = 0 # 0x0, b'\x00\x00'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: [3]
class item_compass_s6:
	def onTouchOrPushBlockStoppedMoving(self):
		save[Compass6] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29494 # 0x7336, b's6'
		save[CELL_SELF + 1] = 12339 # 0x3033, b'03'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29494 # 0x7336, b's6'
		save[CELL_UP + 1] = 12337 # 0x3031, b'01'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29494 # 0x7336, b's6'
		save[CELL_RIGHT + 1] = 12340 # 0x3034, b'04'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 3 # 0x3, b'\x00\x03'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 0 # 0x0, b'\x00\x00'
local2 = 0 # 0x0, b'\x00\x00'
local3 = 0 # 0x0, b'\x00\x00'
local4 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'PICKCON\x00', b'CARNEYCON\x00', b'WOMANCON\x00\x00', b'STAGE\x00', b'TALK\x00\x00']],
]
