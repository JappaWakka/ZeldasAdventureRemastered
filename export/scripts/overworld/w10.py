# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_houseKeeper:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 0] == 0 and save[LOCALS + 1] == 0 and save[113] == 0:
			playVoiceLine(source=self, soundId=0)
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
			save[LOCALS + 1] = 1 # 0x1, b'\x00\x01'
		
		if save[LOCALS + 0] == 0 and save[LOCALS + 1] == 0 and save[113] == 1:
			playVoiceLine(source=self, soundId=1)
			save[LOCALS + 1] = 1 # 0x1, b'\x00\x01'
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		
	def onItemInteractOrSoundFileDone(self):
		save[LOCALS + 1] = 0 # 0x0, b'\x00\x00'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 119 # 0x77, b'\x00w'
		save[CELL_SELF + 1] = 12592 # 0x3130, b'10'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 119 # 0x77, b'\x00w'
		save[CELL_UP + 1] = 14592 # 0x3900, b'9\x00'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 119 # 0x77, b'\x00w'
		save[CELL_DOWN + 1] = 12593 # 0x3131, b'11'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 120 # 0x78, b'\x00x'
		save[CELL_RIGHT + 1] = 12592 # 0x3130, b'10'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 118 # 0x76, b'\x00v'
		save[CELL_LEFT + 1] = 12592 # 0x3130, b'10'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
	def onLeave(self):
		if save[LOCALS + 0] == 1 and save[113] == 0:
			save[113] = 1 # 0x1, b'\x00\x01'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'STAGE\x00', b'TALK\x00\x00']],
]
