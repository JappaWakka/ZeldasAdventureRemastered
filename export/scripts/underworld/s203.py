# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [3]
class env_door:
	def onTouchOrPushBlockStoppedMoving(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 3])
		
	def onLoad_maybe(self):
		if save[151] == 3:
			spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [4]
class env_passage:
	def onTouchOrPushBlockStoppedMoving(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
	def onLoad_maybe(self):
		if save[151] == 3:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [0, 1, 2]
class enemy_stalfos:
	def onDeathOrRaftRideFinished(self):
		save[151] += 1
		
		if save[151] == 3:
			spawnAndAnimate(actor=cast[3])
			spawnAndAnimate(actor=cast[4])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 7:
			player.x = 214
			player.y = 62
			setSpriteGroup(2) # Usually the sprite for DOWN
		else:
			player.x = 70
			player.y = 168
			setSpriteGroup(0) # Usually the sprite for UP
		
		save[CELL_SELF + 0] = 29490 # 0x7332, b's2'
		save[CELL_SELF + 1] = 12339 # 0x3033, b'03'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29490 # 0x7332, b's2'
		save[CELL_UP + 1] = 12343 # 0x3037, b'07'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 29490 # 0x7332, b's2'
		save[CELL_DOWN + 1] = 12338 # 0x3032, b'02'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29490 # 0x7332, b's2'
		save[CELL_LEFT + 1] = 12341 # 0x3035, b'05'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_CELL_ID_maybe] = 3 # 0x3, b'\x00\x03'
		
	def onTouchTrigger(self):
		if save[151] == 3:
			returnValue = 1
		
# Local variables
local0 = 29490 # 0x7332, b's2'
local1 = 12341 # 0x3035, b'05'
local2 = 102 # 0x66, b'\x00f'
local3 = 29490 # 0x7332, b's2'
local4 = 12343 # 0x3037, b'07'
local5 = 102 # 0x66, b'\x00f'
local6 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00', b'TRIGCELL4\x00', b'TRIGCELL5\x00', b'TRIGCELL6\x00', b'WDOOR\x00']],
]
