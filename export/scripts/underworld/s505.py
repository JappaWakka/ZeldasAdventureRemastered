# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class env_bridge_plank:
	def onItemInteractOrSoundFileDone(self):
		if save[108] == 0:
			spawnAndAnimate(actor=cast[0])
			save[108] = 1 # 0x1, b'\x00\x01'
			save[Plank] = 0 # 0x0, b'\x00\x00'
		
	def onLoad_maybe(self):
		if save[108] == 1:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29493 # 0x7335, b's5'
		save[CELL_SELF + 1] = 12341 # 0x3035, b'05'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29493 # 0x7335, b's5'
		save[CELL_UP + 1] = 12340 # 0x3034, b'04'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29493 # 0x7335, b's5'
		save[CELL_LEFT + 1] = 12342 # 0x3036, b'06'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 5 # 0x5, b'\x00\x05'
		
	def onTouchTrigger(self):
		if save[108] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
