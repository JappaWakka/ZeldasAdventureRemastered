# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_malmord:
	def onDeathOrRaftRideFinished(self):
		spawnAndAnimate(actor=cast[1])
		spawnAndAnimate(actor=cast[2])
		spawnAndAnimate(actor=cast[3])
		spawnAndAnimate(actor=cast[4])
		spawnAndAnimate(actor=cast[5])
		spawnAndAnimate(actor=cast[6])
		spawnAndAnimate(actor=cast[7])
		spawnAndAnimate(actor=cast[8])
		spawnAndAnimate(actor=cast[9])
		spawnAndAnimate(actor=cast[10])
		
	def onItemInteractOrSoundFileDone(self):
		spawnAndAnimate(actor=self)
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
class enemy_dragonfly:
	def onDeathOrRaftRideFinished(self):
		if save[LOCALS + 3] == 9:
			spawnAndAnimate(actor=cast[11])
		else:
			save[LOCALS + 3] += 1
		
# Actor description 2
# Used for actors: [11]
class enemy_dragonfly:
	def onDeathOrRaftRideFinished(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 26476 # 0x676c, b'gl'
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
		player.x = 158
		player.y = 168
		setSpriteGroup(0) # Usually the sprite for UP
		save[RESPAWN_CELL_ID_maybe] = 4 # 0x4, b'\x00\x04'
		

# Local variables
local0 = 26476 # 0x676c, b'gl'
local1 = 13568 # 0x3500, b'5\x00'
local2 = 102 # 0x66, b'\x00f'
local3 = 0 # 0x0, b'\x00\x00'

# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00', b'FLYDEAD\x00']],
]
