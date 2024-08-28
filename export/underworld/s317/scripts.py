# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2, 3]
class enemy_dragonfly:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 16:
			player.x = 208
			player.y = 168
			setSpriteGroup(0) # Usually the sprite for UP
		else:
			player.x = 138
			player.y = 18
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 29491 # 0x7333, b's3'
		save[CELL_SELF + 1] = 12599 # 0x3137, b'17'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29491 # 0x7333, b's3'
		save[CELL_UP + 1] = 12600 # 0x3138, b'18'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 29491 # 0x7333, b's3'
		save[CELL_DOWN + 1] = 12598 # 0x3136, b'16'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 17 # 0x11, b'\x00\x11'
		enableIcePhysics()
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
