# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_agwanda:
	def onItemInteractOrSoundFileDone(self):
		despawn(actor=cast[0])
		allowPlayerInputs = True
		
	def onLoad_maybe(self):
		if save[AGWANDA_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
			allowPlayerInputs = False
			playVoiceLine(source=self, soundId=0)
		
# Actor description 1
# Used for actors: [1]
class env_raft:
	def onDeathOrRaftRideFinished(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 3] == 0:
			spawnAndAnimate(actor=self)
			save[LOCALS + 3] = 1 # 0x1, b'\x00\x01'
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29493 # 0x7335, b's5'
		save[CELL_SELF + 1] = 12598 # 0x3136, b'16'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 29493 # 0x7335, b's5'
		save[CELL_DOWN + 1] = 12597 # 0x3135, b'15'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 29493 # 0x7335, b's5'
		save[CELL_RIGHT + 1] = 12599 # 0x3137, b'17'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 16 # 0x10, b'\x00\x10'
		player.x = 136
		player.y = 168
		setSpriteGroup(0) # Usually the sprite for UP
		
# Local variables
local0 = 29493 # 0x7335, b's5'
local1 = 12599 # 0x3137, b'17'
local2 = 102 # 0x66, b'\x00f'
local3 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00', b'RAFTDOWN\x00\x00']],
]
