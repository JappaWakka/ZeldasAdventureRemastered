# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: []
class item_weapon_trident:
	def onTouch(self):
		save[Trident] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[Trident] < 1:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 117 # 0x75, b'\x00u'
		save[CELL_SELF + 1] = 12601 # 0x3139, b'19'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 117 # 0x75, b'\x00u'
		save[CELL_UP + 1] = 12600 # 0x3138, b'18'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 117 # 0x75, b'\x00u'
		save[CELL_DOWN + 1] = 12848 # 0x3230, b'20'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 118 # 0x76, b'\x00v'
		save[CELL_RIGHT + 1] = 12601 # 0x3139, b'19'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 116 # 0x74, b'\x00t'
		save[CELL_LEFT + 1] = 12601 # 0x3139, b'19'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		
	def onTouchTrigger(self):
		if save[AlligatorShoes] == 1:
			returnValue = 1
		else:
			returnValue = 4
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
