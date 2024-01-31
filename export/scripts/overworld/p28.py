# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class env_raft:
	def onDeathOrRaftRideFinished(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 112 # 0x70, b'\x00p'
		save[CELL_SELF + 1] = 12856 # 0x3238, b'28'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 113 # 0x71, b'\x00q'
		save[CELL_RIGHT + 1] = 12856 # 0x3238, b'28'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 111 # 0x6f, b'\x00o'
		save[CELL_LEFT + 1] = 12856 # 0x3238, b'28'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		setLocationOnMap(p27)
		save[RAFT_JOURNEY_STATE] = 1 # 0x1, b'\x00\x01'
		
# Local variables
local0 = 113 # 0x71, b'\x00q'
local1 = 12856 # 0x3238, b'28'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
