# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2, 3, 4]
class enemy_dragonfly:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29491 # 0x7333, b's3'
		save[CELL_SELF + 1] = 12594 # 0x3132, b'12'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29491 # 0x7333, b's3'
		save[CELL_UP + 1] = 12593 # 0x3131, b'11'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 29491 # 0x7333, b's3'
		save[CELL_DOWN + 1] = 12595 # 0x3133, b'13'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 12 # 0xc, b'\x00\x0c'
		enableIcePhysics()
		
	def onTouchTrigger(self):
		if save[LOCALS + 0] > 3:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'NUMMON\x00\x00']],
]
