# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_gibdo:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 1:
			player.x = 152
			player.y = 162
			setSpriteGroup(0) # Usually the sprite for UP
		else:
			player.x = 162
			player.y = 14
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 29492 # 0x7334, b's4'
		save[CELL_SELF + 1] = 12593 # 0x3131, b'11'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29492 # 0x7334, b's4'
		save[CELL_UP + 1] = 12594 # 0x3132, b'12'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 29492 # 0x7334, b's4'
		save[CELL_DOWN + 1] = 12337 # 0x3031, b'01'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 11 # 0xb, b'\x00\x0b'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
