# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_tumbleBot:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [2, 3]
class enemy_bagoBago:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 112 # 0x70, b'\x00p'
		save[CELL_SELF + 1] = 12595 # 0x3133, b'13'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 112 # 0x70, b'\x00p'
		save[CELL_UP + 1] = 12594 # 0x3132, b'12'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 112 # 0x70, b'\x00p'
		save[CELL_DOWN + 1] = 12596 # 0x3134, b'14'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 113 # 0x71, b'\x00q'
		save[CELL_RIGHT + 1] = 12595 # 0x3133, b'13'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 111 # 0x6f, b'\x00o'
		save[CELL_LEFT + 1] = 12595 # 0x3133, b'13'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
