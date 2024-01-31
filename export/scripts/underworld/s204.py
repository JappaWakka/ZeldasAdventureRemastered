# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_vire:
	def onDeathOrRaftRideFinished(self):
		if save[118] == 0:
			op12_0x2cd0(actor=cast[1])
			save[118] = 2 # 0x2, b'\x00\x02'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class item_treasure_goldenKey:
	def onTouch(self):
		save[118] = 1 # 0x1, b'\x00\x01'
		save[KEY_COUNT] += 1
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[118] == 2:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29490 # 0x7332, b's2'
		save[CELL_SELF + 1] = 12340 # 0x3034, b'04'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 4 # 0x4, b'\x00\x04'
		player.x = 144
		player.y = 54
		setSpriteGroup(2) # Usually the sprite for DOWN
		
	def onTouchTrigger(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
# Local variables
local0 = 29490 # 0x7332, b's2'
local1 = 12341 # 0x3035, b'05'
local2 = 102 # 0x66, b'\x00f'
local3 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00', b'VIREHIT\x00']],
]
