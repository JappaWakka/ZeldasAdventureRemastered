# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_floorSpikes:
	def onLoad_maybe(self):
		if save[SIGN_S4] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[INDOOR_ID] == 1:
			save[INDOOR_ID] = 0 # 0x0, b'\x00\x00'
			player.x = 58
			player.y = 138
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 1:
			save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
			player.x = 28
			player.y = 156
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 115 # 0x73, b'\x00s'
		save[CELL_SELF + 1] = 13568 # 0x3500, b'5\x00'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 1] = 13824 # 0x3600, b'6\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 114 # 0x72, b'\x00r'
		save[CELL_LEFT + 1] = 13568 # 0x3500, b'5\x00'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_ENUM] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 0 # 0x0, b'\x00\x00'
		setLocationOnMap(s4)
		
	def onTouchTrigger(self):
		if save[SIGN_S4] == 1:
			teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
# Local variables
local0 = 29492 # 0x7334, b's4'
local1 = 12337 # 0x3031, b'01'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
