# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2]
class env_redBootsEffect:
	def onDeathOrRaftRideFinished(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 2:
			spawnAndAnimate(actor=cast[2])
		
		if save[RESPAWN_CELL_ID_maybe] == 0 and save[Calm] == 1:
			spawnAndAnimate(actor=cast[1])
			save[LOCALS + 0] = 116 # 0x74, b'\x00t'
			save[LOCALS + 1] = 12599 # 0x3137, b'17'
			save[LOCALS + 2] = 102 # 0x66, b'\x00f'
		
		if save[Calm] == 0:
			spawnAndAnimate(actor=cast[0])
			spawnAndAnimate(actor=cast[3])
			spawnAndAnimate(actor=cast[4])
		
		save[CELL_SELF + 0] = 116 # 0x74, b'\x00t'
		save[CELL_SELF + 1] = 12600 # 0x3138, b'18'
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
		save[RESPAWN_CELL_ID_maybe] = 1 # 0x1, b'\x00\x01'
		setLocationOnMap(t17)
		
# Local variables
local0 = 117 # 0x75, b'\x00u'
local1 = 12600 # 0x3138, b'18'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
