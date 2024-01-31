# This is not real python, but approxiamates it.

class Cell:
	def onEntry(self):
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 1:
			save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
			save[RESPAWN_ENUM] = 0 # 0x0, b'\x00\x00'
		
		if save[RESPAWN_ENUM] == 0:
			player.x = 136
			player.y = 40
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 29493 # 0x7335, b's5'
		save[CELL_SELF + 1] = 12337 # 0x3031, b'01'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29493 # 0x7335, b's5'
		save[CELL_RIGHT + 1] = 12338 # 0x3032, b'02'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 114 # 0x72, b'\x00r'
		save[CELL_LEFT + 1] = 12857 # 0x3239, b'29'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_ENUM] = 5 # 0x5, b'\x00\x05'
		save[INDOOR_ID] = 1 # 0x1, b'\x00\x01'
		save[RESPAWN_CELL_ID_maybe] = 1 # 0x1, b'\x00\x01'
		playVoiceLine(source=self, soundId=0)
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
