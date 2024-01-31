# This is not real python, but approxiamates it.

class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 104 # 0x68, b'\x00h'
		save[CELL_SELF + 1] = 12852 # 0x3234, b'24'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 104 # 0x68, b'\x00h'
		save[CELL_UP + 1] = 12851 # 0x3233, b'23'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 104 # 0x68, b'\x00h'
		save[CELL_DOWN + 1] = 12853 # 0x3235, b'25'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 105 # 0x69, b'\x00i'
		save[CELL_RIGHT + 1] = 12852 # 0x3234, b'24'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 103 # 0x67, b'\x00g'
		save[CELL_LEFT + 1] = 12852 # 0x3234, b'24'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
		if save[Wand] == 0:
			playVoiceLine(source=self, soundId=0)
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
