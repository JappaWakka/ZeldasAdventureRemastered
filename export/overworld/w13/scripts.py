# This is not real python, but approxiamates it.

class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 119 # 0x77, b'\x00w'
		save[CELL_SELF + 1] = 12595 # 0x3133, b'13'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 119 # 0x77, b'\x00w'
		save[CELL_UP + 1] = 12594 # 0x3132, b'12'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 119 # 0x77, b'\x00w'
		save[CELL_DOWN + 1] = 12596 # 0x3134, b'14'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
