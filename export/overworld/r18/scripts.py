# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2]
class enemy_swampZola_green:
	def onLoad_maybe(self):
		if save[Repellent] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 114 # 0x72, b'\x00r'
		save[CELL_SELF + 1] = 12600 # 0x3138, b'18'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 114 # 0x72, b'\x00r'
		save[CELL_UP + 1] = 12599 # 0x3137, b'17'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 114 # 0x72, b'\x00r'
		save[CELL_DOWN + 1] = 12601 # 0x3139, b'19'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 1] = 12600 # 0x3138, b'18'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 113 # 0x71, b'\x00q'
		save[CELL_LEFT + 1] = 12600 # 0x3138, b'18'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		
	def onTouchTrigger(self):
		if save[AlligatorShoes] == 1:
			returnValue = 1
		else:
			returnValue = 4
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
