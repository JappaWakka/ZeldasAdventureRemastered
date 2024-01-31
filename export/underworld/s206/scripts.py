# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_vire:
	def onDeathOrRaftRideFinished(self):
		spawnAndAnimate(actor=cast[2])
		save[LOCALS + 3] = 1 # 0x1, b'\x00\x01'
		save[150] = 1 # 0x1, b'\x00\x01'
		
		if save[Map2] == 0:
			op12_0x2cd0(actor=cast[1])
			save[Map2] = 2 # 0x2, b'\x00\x02'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class item_map_s2:
	def onTouch(self):
		save[Map2] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[Map2] == 2:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class env_unknownActor254:
	def onTouch(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
	def onLoad_maybe(self):
		if save[150] == 1:
			spawnAndAnimate(actor=self)
			save[LOCALS + 3] = 1 # 0x1, b'\x00\x01'
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 7:
			player.x = 280
			player.y = 118
			setSpriteGroup(3) # Usually the sprite for LEFT
		else:
			player.x = 146
			player.y = 168
			setSpriteGroup(0) # Usually the sprite for UP
		
		save[CELL_SELF + 0] = 29490 # 0x7332, b's2'
		save[CELL_SELF + 1] = 12342 # 0x3036, b'06'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 29490 # 0x7332, b's2'
		save[CELL_DOWN + 1] = 12341 # 0x3035, b'05'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 6 # 0x6, b'\x00\x06'
		
	def onTouchTrigger(self):
		if save[LOCALS + 3] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 29490 # 0x7332, b's2'
local1 = 12343 # 0x3037, b'07'
local2 = 102 # 0x66, b'\x00f'
local3 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00', b'DOOR\x00\x00']],
]
