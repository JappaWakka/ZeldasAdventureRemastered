# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class item_treasure_plank:
	def onTouch(self):
		save[Plank] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[Plank] == 0 and save[108] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29493 # 0x7335, b's5'
		save[CELL_SELF + 1] = 12340 # 0x3034, b'04'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29493 # 0x7335, b's5'
		save[CELL_UP + 1] = 12339 # 0x3033, b'03'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 29493 # 0x7335, b's5'
		save[CELL_DOWN + 1] = 12341 # 0x3035, b'05'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 4 # 0x4, b'\x00\x04'
		
		if save[AGWANDA_DEFEATED] == 0:
			playVoiceLine(source=self, soundId=0)
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
