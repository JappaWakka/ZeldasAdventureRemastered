# This is not real python, but approxiamates it.

class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 24929 # 0x6161, b'aa'
		save[CELL_SELF + 1] = 12599 # 0x3137, b'17'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 24929 # 0x6161, b'aa'
		save[CELL_UP + 1] = 12598 # 0x3136, b'16'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 24930 # 0x6162, b'ab'
		save[CELL_RIGHT + 1] = 12599 # 0x3137, b'17'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 122 # 0x7a, b'\x00z'
		save[CELL_LEFT + 1] = 12599 # 0x3137, b'17'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
