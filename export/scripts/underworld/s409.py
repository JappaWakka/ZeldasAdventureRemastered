# This is not real python, but approxiamates it.

class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 8:
			player.x = 98
			player.y = 0
			setSpriteGroup(2) # Usually the sprite for DOWN
		else:
			player.x = 92
			player.y = 168
			setSpriteGroup(0) # Usually the sprite for UP
		
		save[CELL_SELF + 0] = 29492 # 0x7334, b's4'
		save[CELL_SELF + 1] = 12345 # 0x3039, b'09'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29492 # 0x7334, b's4'
		save[CELL_UP + 1] = 12344 # 0x3038, b'08'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 29492 # 0x7334, b's4'
		save[CELL_DOWN + 1] = 12596 # 0x3134, b'14'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 9 # 0x9, b'\x00\t'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
