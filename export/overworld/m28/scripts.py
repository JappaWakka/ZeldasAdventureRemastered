# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class env_raft:
	def onDeathOrRaftRideFinished(self):
		if save[RAFT_JOURNEY_STATE] == 1:
			teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
	def onLoad_maybe(self):
		if save[RAFT_JOURNEY_STATE] == 1:
			spawnAndAnimate(actor=cast[0])
		
		if save[RAFT_JOURNEY_STATE] == 2:
			spawnAndAnimate(actor=cast[1])
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 109 # 0x6d, b'\x00m'
		save[CELL_SELF + 1] = 12856 # 0x3238, b'28'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 109 # 0x6d, b'\x00m'
		save[CELL_UP + 1] = 12855 # 0x3237, b'27'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 108 # 0x6c, b'\x00l'
		save[CELL_LEFT + 1] = 12856 # 0x3238, b'28'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		setLocationOnMap(m27)
		
	def onRespawn_maybe(self):
		save[RAFT_JOURNEY_STATE] = 0 # 0x0, b'\x00\x00'
		
# Local variables
local0 = 110 # 0x6e, b'\x00n'
local1 = 12856 # 0x3238, b'28'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
