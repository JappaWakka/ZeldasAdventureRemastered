# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_leever:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 100 # 0x64, b'\x00d'
		save[CELL_SELF + 1] = 14336 # 0x3800, b'8\x00'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 100 # 0x64, b'\x00d'
		save[CELL_UP + 1] = 14080 # 0x3700, b'7\x00'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 101 # 0x65, b'\x00e'
		save[CELL_RIGHT + 1] = 14336 # 0x3800, b'8\x00'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 99 # 0x63, b'\x00c'
		save[CELL_LEFT + 1] = 14336 # 0x3800, b'8\x00'
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
