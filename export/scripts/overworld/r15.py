# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_tumbleBot:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: []
class enemy_tumbleHead:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 114 # 0x72, b'\x00r'
		save[CELL_SELF + 1] = 12597 # 0x3135, b'15'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 114 # 0x72, b'\x00r'
		save[CELL_DOWN + 1] = 12598 # 0x3136, b'16'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 1] = 12597 # 0x3135, b'15'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 113 # 0x71, b'\x00q'
		save[CELL_LEFT + 1] = 12597 # 0x3135, b'15'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
