# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_kelpi:
	def onDeathOrRaftRideFinished(self):
		save[151] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		if save[151] == 0:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=0)
		
# Actor description 1
# Used for actors: [1]
class env_raft:
	def onDeathOrRaftRideFinished(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29493 # 0x7335, b's5'
		save[CELL_SELF + 1] = 12849 # 0x3231, b'21'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29493 # 0x7335, b's5'
		save[CELL_UP + 1] = 12848 # 0x3230, b'20'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29493 # 0x7335, b's5'
		save[CELL_RIGHT + 1] = 12850 # 0x3232, b'22'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 21 # 0x15, b'\x00\x15'
		
# Local variables
local0 = 29493 # 0x7335, b's5'
local1 = 12850 # 0x3232, b'22'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
