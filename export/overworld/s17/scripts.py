# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class env_redBootsEffect:
	def onDeathOrRaftRideFinished(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 4:
			spawnAndAnimate(actor=cast[1])
		else:
			spawnAndAnimate(actor=cast[0])
			save[LOCALS + 0] = 0 # 0x0, b'\x00\x00'
			save[LOCALS + 1] = 0 # 0x0, b'\x00\x00'
			save[LOCALS + 2] = 0 # 0x0, b'\x00\x00'
		
		save[CELL_SELF + 0] = 115 # 0x73, b'\x00s'
		save[CELL_SELF + 1] = 12599 # 0x3137, b'17'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 1] = 12600 # 0x3138, b'18'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 3 # 0x3, b'\x00\x03'
		setLocationOnMap(s16)
		
# Local variables
local0 = 116 # 0x74, b'\x00t'
local1 = 12599 # 0x3137, b'17'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
