# This is not real python, but approxiamates it.

class Cell:
	def onEntry(self):
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 1:
			save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
			player.x = 148
			player.y = 84
			setSpriteGroup(2) # Usually the sprite for DOWN
			save[INDOOR_ID] = 0 # 0x0, b'\x00\x00'
		
		save[CELL_SELF + 0] = 103 # 0x67, b'\x00g'
		save[CELL_SELF + 1] = 12851 # 0x3233, b'23'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 103 # 0x67, b'\x00g'
		save[CELL_UP + 1] = 12850 # 0x3232, b'22'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 103 # 0x67, b'\x00g'
		save[CELL_DOWN + 1] = 12852 # 0x3234, b'24'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 104 # 0x68, b'\x00h'
		save[CELL_RIGHT + 1] = 12851 # 0x3233, b'23'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 1] = 12851 # 0x3233, b'23'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		setLocationOnMap(g22)
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
