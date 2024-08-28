# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class item_treasure_heartContainer:
	def onTouchOrPushBlockStoppedMoving(self):
		showSparklesAndDespawn(actor=self)
		player.maxHealth += ONE_HEART, healToFull()
		save[HEART_CONTAINER_S18] = 1 # 0x1, b'\x00\x01'
		playSoundEffect(source=(INVALID), soundId=3)
		
	def onLoad_maybe(self):
		if save[HEART_CONTAINER_S18] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 115 # 0x73, b'\x00s'
		save[CELL_SELF + 1] = 12600 # 0x3138, b'18'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 115 # 0x73, b'\x00s'
		save[CELL_UP + 1] = 12599 # 0x3137, b'17'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 4 # 0x4, b'\x00\x04'
		setLocationOnMap(s17)
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
