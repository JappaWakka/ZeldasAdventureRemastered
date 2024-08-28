# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_goriya:
	def onDeathOrRaftRideFinished(self):
		if save[LOCALS + 0] < 2:
			save[LOCALS + 0] += 1
		
		if save[LOCALS + 0] == 2 and save[Knife] == 0:
			op12_0x2cd0(actor=cast[2])
			save[Knife] = 2 # 0x2, b'\x00\x02'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class item_treasure_dagger:
	def onTouchOrPushBlockStoppedMoving(self):
		save[Knife] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[Knife] == 2:
			spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: [3]
class env_rippedTentWall:
	def onTouchOrPushBlockStoppedMoving(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 1])
		
	def onItemInteractOrSoundFileDone(self):
		spawnAndAnimate(actor=self)
		save[LOCALS + 4] = 1 # 0x1, b'\x00\x01'
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 14:
			player.x = 72
			player.y = 40
			setSpriteGroup(2) # Usually the sprite for DOWN
		else:
			player.x = 240
			player.y = 92
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		save[CELL_SELF + 0] = 29490 # 0x7332, b's2'
		save[CELL_SELF + 1] = 12597 # 0x3135, b'15'
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
		save[CELL_LEFT + 0] = 29490 # 0x7332, b's2'
		save[CELL_LEFT + 1] = 12596 # 0x3134, b'14'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_CELL_ID_maybe] = 15 # 0xf, b'\x00\x0f'
		
	def onTouchTrigger(self):
		if save[LOCALS + 4] == 1:
			teleportPlayerTo(cellName=(char*) &save[LOCALS + 1])
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 29490 # 0x7332, b's2'
local2 = 12598 # 0x3136, b'16'
local3 = 102 # 0x66, b'\x00f'
local4 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'NUMMON\x00\x00', b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00', b'DOOR\x00\x00']],
]
