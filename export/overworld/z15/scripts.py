# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_axeMan:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 122 # 0x7a, b'\x00z'
		save[CELL_SELF + 1] = 12597 # 0x3135, b'15'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 122 # 0x7a, b'\x00z'
		save[CELL_UP + 1] = 12596 # 0x3134, b'14'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 122 # 0x7a, b'\x00z'
		save[CELL_DOWN + 1] = 12598 # 0x3136, b'16'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 24929 # 0x6161, b'aa'
		save[CELL_RIGHT + 1] = 12597 # 0x3135, b'15'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 121 # 0x79, b'\x00y'
		save[CELL_LEFT + 1] = 12597 # 0x3135, b'15'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
