# This is not real python, but approxiamates it.

class Cell:
	def onEntry(self):
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 1:
			save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
			player.x = 208
			player.y = 44
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[INDOOR_ID] = 0 # 0x0, b'\x00\x00'
		save[CELL_SELF + 0] = 113 # 0x71, b'\x00q'
		save[CELL_SELF + 1] = 12857 # 0x3239, b'29'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 113 # 0x71, b'\x00q'
		save[CELL_UP + 1] = 12856 # 0x3238, b'28'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 114 # 0x72, b'\x00r'
		save[CELL_RIGHT + 1] = 12857 # 0x3239, b'29'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		setLocationOnMap(q28)
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
