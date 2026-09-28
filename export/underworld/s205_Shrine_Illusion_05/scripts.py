# This is not real python, but approxiamates it.

class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 6:
			player.x = 150
			player.y = 48
			setSpriteGroup(2) # Usually the sprite for DOWN
		else:
			player.x = 262
			player.y = 66
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		if save[RESPAWN_CELL_ID_maybe] == 4:
			player.x = 148
			player.y = 168
			setSpriteGroup(0) # Usually the sprite for UP
		
		save[CELL_SELF + 0] = 29490 # 0x7332, b's2'
		save[CELL_SELF + 1] = 12341 # 0x3035, b'05'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 29490 # 0x7332, b's2'
		save[CELL_DOWN + 1] = 12340 # 0x3034, b'04'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 5 # 0x5, b'\x00\x05'
		
	def onTouchTrigger(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
# Local variables
local0 = 29490 # 0x7332, b's2'
local1 = 12342 # 0x3036, b'06'
local2 = 102 # 0x66, b'\x00f'
local3 = 0 # 0x0, b'\x00\x00'
local4 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00', b'VIREHIT\x00', b'ICFDONE\x00']],
]
