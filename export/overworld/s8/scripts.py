# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_moby:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 115 # 0x73, b'\x00s'
		save[CELL_SELF + 1] = 14336 # 0x3800, b'8\x00'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 115 # 0x73, b'\x00s'
		save[CELL_UP + 1] = 14080 # 0x3700, b'7\x00'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 116 # 0x74, b'\x00t'
		save[CELL_RIGHT + 1] = 14336 # 0x3800, b'8\x00'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 114 # 0x72, b'\x00r'
		save[CELL_LEFT + 1] = 14336 # 0x3800, b'8\x00'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
