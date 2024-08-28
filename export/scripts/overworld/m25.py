# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_golem:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[INDOOR_ID] == 1:
			save[INDOOR_ID] = 0 # 0x0, b'\x00\x00'
			player.x = 200
			player.y = 56
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 109 # 0x6d, b'\x00m'
		save[CELL_SELF + 1] = 12853 # 0x3235, b'25'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 109 # 0x6d, b'\x00m'
		save[CELL_DOWN + 1] = 12854 # 0x3236, b'26'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 110 # 0x6e, b'\x00n'
		save[CELL_RIGHT + 1] = 12853 # 0x3235, b'25'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		setLocationOnMap(m24)
		
	def onTouchTrigger(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
# Local variables
local0 = 109 # 0x6d, b'\x00m'
local1 = 12853 # 0x3235, b'25'
local2 = 24934 # 0x6166, b'af'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
