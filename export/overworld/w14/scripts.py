# This is not real python, but approxiamates it.

class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 119 # 0x77, b'\x00w'
		save[CELL_SELF + 1] = 12596 # 0x3134, b'14'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 119 # 0x77, b'\x00w'
		save[CELL_UP + 1] = 12595 # 0x3133, b'13'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 119 # 0x77, b'\x00w'
		save[CELL_DOWN + 1] = 12597 # 0x3135, b'15'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 120 # 0x78, b'\x00x'
		save[CELL_RIGHT + 1] = 12596 # 0x3134, b'14'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 118 # 0x76, b'\x00v'
		save[CELL_LEFT + 1] = 12596 # 0x3134, b'14'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
