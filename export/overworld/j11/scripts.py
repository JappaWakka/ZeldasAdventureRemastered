# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_swampZola_green:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_SELF + 1] = 12593 # 0x3131, b'11'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_UP + 1] = 12592 # 0x3130, b'10'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 107 # 0x6b, b'\x00k'
		save[CELL_RIGHT + 1] = 12593 # 0x3131, b'11'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 105 # 0x69, b'\x00i'
		save[CELL_LEFT + 1] = 12593 # 0x3131, b'11'
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
