# This is not real python, but approxiamates it.

class Cell:
	def onEntry(self):
		if save[RESPAWN_ENUM] == 0:
			save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 1 # 0x1, b'\x00\x01'
		
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 1:
			save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
			player.x = 172
			player.y = 152
			setSpriteGroup(0) # Usually the sprite for UP
		
		save[CELL_SELF + 0] = 29495 # 0x7337, b's7'
		save[CELL_SELF + 1] = 12337 # 0x3031, b'01'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29495 # 0x7337, b's7'
		save[CELL_UP + 1] = 12338 # 0x3032, b'02'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 98 # 0x62, b'\x00b'
		save[CELL_DOWN + 1] = 14080 # 0x3700, b'7\x00'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_ENUM] = 7 # 0x7, b'\x00\x07'
		save[RESPAWN_CELL_ID_maybe] = 1 # 0x1, b'\x00\x01'
		playVoiceLine(source=self, soundId=0)
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
