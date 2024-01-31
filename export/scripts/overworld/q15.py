# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_yalzan:
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 1] == 0 and save[LOCALS + 0] == 0 and save[RUPEE_COUNT] > 9:
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
			despawn(actor=cast[1])
			despawn(actor=cast[2])
			rupees -= 10
		
		if save[LOCALS + 1] == 1:
			save[LOCALS + 1] = 0 # 0x0, b'\x00\x00'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		playVoiceLine(source=self, soundId=0)
		save[LOCALS + 1] = 1 # 0x1, b'\x00\x01'
		
# Actor description 1
# Used for actors: [1, 2]
class enemy_floorSpikes:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 113 # 0x71, b'\x00q'
		save[CELL_SELF + 1] = 12597 # 0x3135, b'15'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 113 # 0x71, b'\x00q'
		save[CELL_UP + 1] = 12596 # 0x3134, b'14'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 114 # 0x72, b'\x00r'
		save[CELL_RIGHT + 1] = 12597 # 0x3135, b'15'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		
	def onTouchTrigger(self):
		if save[LOCALS + 0] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'PAID\x00\x00', b'STAGE\x00']],
]
