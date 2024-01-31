# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2]
class env_tallFire:
	def onLoad_maybe(self):
		if save[SIGN_S7] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_ENUM] == 7:
			player.x = 250
			player.y = 38
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 1:
			save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
			player.x = 58
			player.y = 96
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 98 # 0x62, b'\x00b'
		save[CELL_SELF + 1] = 14080 # 0x3700, b'7\x00'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 98 # 0x62, b'\x00b'
		save[CELL_DOWN + 1] = 14336 # 0x3800, b'8\x00'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 99 # 0x63, b'\x00c'
		save[CELL_RIGHT + 1] = 14080 # 0x3700, b'7\x00'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 97 # 0x61, b'\x00a'
		save[CELL_LEFT + 1] = 14080 # 0x3700, b'7\x00'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_ENUM] = 0 # 0x0, b'\x00\x00'
		setLocationOnMap(b6)
		
	def onTouchTrigger(self):
		if save[SIGN_S7] == 1:
			teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
# Local variables
local0 = 29495 # 0x7337, b's7'
local1 = 12337 # 0x3031, b'01'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
