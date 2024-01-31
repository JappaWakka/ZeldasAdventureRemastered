# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class env_raft:
	def onDeathOrRaftRideFinished(self):
		if save[RAFT_JOURNEY_STATE] == 2:
			teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
class Cell:
	def onEntry(self):
		if save[RAFT_JOURNEY_STATE] == 1:
			spawnAndAnimate(actor=cast[0])
			save[RAFT_JOURNEY_STATE] = 0 # 0x0, b'\x00\x00'
		else:
			spawnAndAnimate(actor=cast[1])
			save[RAFT_JOURNEY_STATE] = 2 # 0x2, b'\x00\x02'
		
		save[CELL_SELF + 0] = 113 # 0x71, b'\x00q'
		save[CELL_SELF + 1] = 12856 # 0x3238, b'28'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 113 # 0x71, b'\x00q'
		save[CELL_DOWN + 1] = 12857 # 0x3239, b'29'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 114 # 0x72, b'\x00r'
		save[CELL_RIGHT + 1] = 12856 # 0x3238, b'28'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 112 # 0x70, b'\x00p'
		save[CELL_LEFT + 1] = 12856 # 0x3238, b'28'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		setLocationOnMap(q27)
		
# Local variables
local0 = 109 # 0x6d, b'\x00m'
local1 = 12856 # 0x3238, b'28'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
