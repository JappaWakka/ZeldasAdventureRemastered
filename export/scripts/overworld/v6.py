# This is not real python, but approxiamates it.

class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 118 # 0x76, b'\x00v'
		save[CELL_SELF + 1] = 13824 # 0x3600, b'6\x00'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 118 # 0x76, b'\x00v'
		save[CELL_UP + 1] = 13568 # 0x3500, b'5\x00'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 118 # 0x76, b'\x00v'
		save[CELL_DOWN + 1] = 14080 # 0x3700, b'7\x00'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 119 # 0x77, b'\x00w'
		save[CELL_RIGHT + 1] = 13824 # 0x3600, b'6\x00'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
