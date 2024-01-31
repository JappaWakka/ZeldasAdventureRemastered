# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2]
class enemy_floorSpikes:
	def onLoad_maybe(self):
		if save[SIGN_S2] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 108 # 0x6c, b'\x00l'
		save[CELL_SELF + 1] = 14336 # 0x3800, b'8\x00'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 108 # 0x6c, b'\x00l'
		save[CELL_DOWN + 1] = 14592 # 0x3900, b'9\x00'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 109 # 0x6d, b'\x00m'
		save[CELL_RIGHT + 1] = 14336 # 0x3800, b'8\x00'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_ENUM] = 0 # 0x0, b'\x00\x00'
		setLocationOnMap(l7)
		
		if save[INDOOR_ID] == 1:
			player.x = 132
			player.y = 98
			save[INDOOR_ID] = 0 # 0x0, b'\x00\x00'
		
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 1:
			save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
			player.x = 190
			player.y = 120
			setSpriteGroup(2) # Usually the sprite for DOWN
		
	def onTouchTrigger(self):
		if save[SIGN_S2] == 1:
			teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
# Local variables
local0 = 29490 # 0x7332, b's2'
local1 = 12337 # 0x3031, b'01'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
