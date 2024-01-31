# This is not real python, but approxiamates it.

class Cell:
	def onEntry(self):
		if save[INDOOR_ID] == 1:
			save[INDOOR_ID] = 0 # 0x0, b'\x00\x00'
			player.x = 230
			player.y = 90
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		save[CELL_SELF + 0] = 111 # 0x6f, b'\x00o'
		save[CELL_SELF + 1] = 12593 # 0x3131, b'11'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 111 # 0x6f, b'\x00o'
		save[CELL_UP + 1] = 12592 # 0x3130, b'10'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 111 # 0x6f, b'\x00o'
		save[CELL_DOWN + 1] = 12594 # 0x3132, b'12'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 112 # 0x70, b'\x00p'
		save[CELL_RIGHT + 1] = 12593 # 0x3131, b'11'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 110 # 0x6e, b'\x00n'
		save[CELL_LEFT + 1] = 12593 # 0x3131, b'11'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		setLocationOnMap(o10)
		
	def onTouchTrigger(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
# Local variables
local0 = 111 # 0x6f, b'\x00o'
local1 = 12593 # 0x3131, b'11'
local2 = 24934 # 0x6166, b'af'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
