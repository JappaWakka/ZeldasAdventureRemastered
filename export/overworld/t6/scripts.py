# This is not real python, but approxiamates it.

class Cell:
	def onEntry(self):
		if save[CELL_ENTRY_DIRECTION] == 3:
			player.x = 244
			player.y = 80
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		save[CELL_SELF + 0] = 116 # 0x74, b'\x00t'
		save[CELL_SELF + 1] = 13824 # 0x3600, b'6\x00'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 116 # 0x74, b'\x00t'
		save[CELL_RIGHT + 1] = 13921 # 0x3661, b'6a'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 1] = 13824 # 0x3600, b'6\x00'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		setLocationOnMap(t5)
		
# No local variables

# Extra script data
extraData = [
	[[]],
]