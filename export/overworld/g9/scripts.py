# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_goblin_unknownActor35:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 0] == 0:
			playVoiceLine(source=self, soundId=0)
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 103 # 0x67, b'\x00g'
		save[CELL_SELF + 1] = 14592 # 0x3900, b'9\x00'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 103 # 0x67, b'\x00g'
		save[CELL_DOWN + 1] = 12592 # 0x3130, b'10'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 104 # 0x68, b'\x00h'
		save[CELL_RIGHT + 1] = 14592 # 0x3900, b'9\x00'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 1] = 14592 # 0x3900, b'9\x00'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'BIKCON\x00\x00']],
]
