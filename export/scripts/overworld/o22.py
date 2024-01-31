# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_greenBird:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 1:
			save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
			player.x = 274
			player.y = 92
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		if save[CELL_ENTRY_DIRECTION] == 1:
			player.x = 206
			player.y = 74
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 111 # 0x6f, b'\x00o'
		save[CELL_SELF + 1] = 12850 # 0x3232, b'22'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 111 # 0x6f, b'\x00o'
		save[CELL_DOWN + 1] = 12851 # 0x3233, b'23'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 112 # 0x70, b'\x00p'
		save[CELL_RIGHT + 1] = 12850 # 0x3232, b'22'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		setLocationOnMap(o21)
		
	def onTouchTrigger(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
# Local variables
local0 = 106 # 0x6a, b'\x00j'
local1 = 12849 # 0x3231, b'21'
local2 = 24934 # 0x6166, b'af'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
