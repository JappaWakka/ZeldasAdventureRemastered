# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_seaMonster:
	def onDeathOrRaftRideFinished(self):
		spawnAndAnimate(actor=cast[2])
		despawn(actor=cast[1])
		
# Actor description 1
# Used for actors: [1, 2]
class env_raft:
	def onDeathOrRaftRideFinished(self):
		if save[LOCALS + 3] == 2:
			teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
		if save[LOCALS + 3] == 1:
			save[LOCALS + 3] = 2 # 0x2, b'\x00\x02'
		
		if save[LOCALS + 3] == 0:
			spawnAndAnimate(actor=cast[0])
			save[LOCALS + 3] = 1 # 0x1, b'\x00\x01'
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 111 # 0x6f, b'\x00o'
		save[CELL_SELF + 1] = 12856 # 0x3238, b'28'
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
		save[CELL_LEFT + 0] = 110 # 0x6e, b'\x00n'
		save[CELL_LEFT + 1] = 12856 # 0x3238, b'28'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		spawnAndAnimate(actor=cast[1])
		setLocationOnMap(o27)
		
# Local variables
local0 = 112 # 0x70, b'\x00p'
local1 = 12856 # 0x3238, b'28'
local2 = 102 # 0x66, b'\x00f'
local3 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00', b'SEAMONSTER\x00\x00']],
]
