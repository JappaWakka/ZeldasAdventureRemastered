# This is not real python, but approxiamates it.

class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 103 # 0x67, b'\x00g'
		save[CELL_SELF + 1] = 12848 # 0x3230, b'20'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 103 # 0x67, b'\x00g'
		save[CELL_DOWN + 1] = 12849 # 0x3231, b'21'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 104 # 0x68, b'\x00h'
		save[CELL_RIGHT + 1] = 12848 # 0x3230, b'20'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 1] = 12848 # 0x3230, b'20'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
	def onTouchTrigger(self):
		if save[RedBoots] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
