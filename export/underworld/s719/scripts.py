# This is not real python, but approxiamates it.

class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 18:
			player.x = 234
			player.y = 168
			setSpriteGroup(0) # Usually the sprite for UP
		else:
			player.x = 0
			player.y = 92
			setSpriteGroup(1) # Usually the sprite for RIGHT
		
		save[CELL_SELF + 0] = 29495 # 0x7337, b's7'
		save[CELL_SELF + 1] = 12601 # 0x3139, b'19'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 29495 # 0x7337, b's7'
		save[CELL_DOWN + 1] = 12600 # 0x3138, b'18'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29495 # 0x7337, b's7'
		save[CELL_LEFT + 1] = 12848 # 0x3230, b'20'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_CELL_ID_maybe] = 19 # 0x13, b'\x00\x13'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
