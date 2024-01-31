# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class item_treasure_heartContainer:
	def onTouch(self):
		showSparklesAndDespawn(actor=self)
		player.maxHealth += ONE_HEART, healToFull()
		save[HEART_CONTAINER_F10] = 1 # 0x1, b'\x00\x01'
		playSoundEffect(source=self, soundId=3)
		
	def onLoad_maybe(self):
		if save[HEART_CONTAINER_F10] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 102 # 0x66, b'\x00f'
		save[CELL_SELF + 1] = 12592 # 0x3130, b'10'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 102 # 0x66, b'\x00f'
		save[CELL_UP + 1] = 14592 # 0x3900, b'9\x00'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 103 # 0x67, b'\x00g'
		save[CELL_RIGHT + 1] = 12592 # 0x3130, b'10'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 101 # 0x65, b'\x00e'
		save[CELL_LEFT + 1] = 12592 # 0x3130, b'10'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
