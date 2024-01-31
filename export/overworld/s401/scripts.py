# This is not real python, but approxiamates it.

class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 0:
			player.x = 148
			player.y = 156
			setSpriteGroup(0) # Usually the sprite for UP
		else:
			player.x = 34
			player.y = 60
			setSpriteGroup(1) # Usually the sprite for RIGHT
		
		if save[RESPAWN_CELL_ID_maybe] == 11:
			player.x = 198
			player.y = 48
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 29492 # 0x7334, b's4'
		save[CELL_SELF + 1] = 12337 # 0x3031, b'01'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29492 # 0x7334, b's4'
		save[CELL_UP + 1] = 12593 # 0x3131, b'11'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 1] = 13568 # 0x3500, b'5\x00'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29492 # 0x7334, b's4'
		save[CELL_LEFT + 1] = 12338 # 0x3032, b'02'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_ENUM] = 4 # 0x4, b'\x00\x04'
		save[RESPAWN_CELL_ID_maybe] = 1 # 0x1, b'\x00\x01'
		save[INDOOR_ID] = 1 # 0x1, b'\x00\x01'
		save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'STAGE\x00']],
]
