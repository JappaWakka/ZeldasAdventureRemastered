# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_goriya:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 101 # 0x65, b'\x00e'
		save[CELL_SELF + 1] = 12852 # 0x3234, b'24'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 101 # 0x65, b'\x00e'
		save[CELL_UP + 1] = 12851 # 0x3233, b'23'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 1] = 12852 # 0x3234, b'24'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 100 # 0x64, b'\x00d'
		save[CELL_LEFT + 1] = 12852 # 0x3234, b'24'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
