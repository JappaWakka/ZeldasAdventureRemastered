# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2]
class enemy_lanmola:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 113 # 0x71, b'\x00q'
		save[CELL_SELF + 1] = 12601 # 0x3139, b'19'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 113 # 0x71, b'\x00q'
		save[CELL_UP + 1] = 12600 # 0x3138, b'18'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 113 # 0x71, b'\x00q'
		save[CELL_DOWN + 1] = 12848 # 0x3230, b'20'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 114 # 0x72, b'\x00r'
		save[CELL_RIGHT + 1] = 12601 # 0x3139, b'19'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		
	def onTouchTrigger(self):
		if save[AlligatorShoes] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
