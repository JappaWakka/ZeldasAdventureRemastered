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
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29494 # 0x7336, b's6'
		save[CELL_SELF + 1] = 12601 # 0x3139, b'19'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 29494 # 0x7336, b's6'
		save[CELL_DOWN + 1] = 12600 # 0x3138, b'18'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 29494 # 0x7336, b's6'
		save[CELL_RIGHT + 1] = 12848 # 0x3230, b'20'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 19 # 0x13, b'\x00\x13'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'PICKCON\x00']],
]
