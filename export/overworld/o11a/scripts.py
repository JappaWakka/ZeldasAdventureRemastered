# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class item_treasure_heartContainer:
	def onTouchOrPushBlockStoppedMoving(self):
		showSparklesAndDespawn(actor=self)
		player.maxHealth += ONE_HEART, healToFull()
		save[HEART_CONTAINER_O11a] = 1 # 0x1, b'\x00\x01'
		playSoundEffect(source=(INVALID), soundId=3)
		
	def onLoad_maybe(self):
		if save[HEART_CONTAINER_O11a] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 103 # 0x67, b'\x00g'
		save[CELL_SELF + 1] = 12851 # 0x3233, b'23'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 111 # 0x6f, b'\x00o'
		save[CELL_UP + 1] = 12593 # 0x3131, b'11'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		player.x = 228
		player.y = 24
		setSpriteGroup(2) # Usually the sprite for DOWN
		save[INDOOR_ID] = 1 # 0x1, b'\x00\x01'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
