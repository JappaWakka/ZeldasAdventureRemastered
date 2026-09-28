# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_goriya:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 15:
			player.x = 70
			player.y = 40
			setSpriteGroup(2) # Usually the sprite for DOWN
		else:
			player.x = 150
			player.y = 168
			setSpriteGroup(0) # Usually the sprite for UP
		
		save[CELL_SELF + 0] = 29490 # 0x7332, b's2'
		save[CELL_SELF + 1] = 12598 # 0x3136, b'16'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29490 # 0x7332, b's2'
		save[CELL_UP + 1] = 12597 # 0x3135, b'15'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 29490 # 0x7332, b's2'
		save[CELL_DOWN + 1] = 12599 # 0x3137, b'17'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29490 # 0x7332, b's2'
		save[CELL_LEFT + 1] = 12597 # 0x3135, b'15'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_CELL_ID_maybe] = 16 # 0x10, b'\x00\x10'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
