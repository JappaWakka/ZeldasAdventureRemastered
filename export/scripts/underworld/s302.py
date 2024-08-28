# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2]
class enemy_tornado:
	def onDeathOrRaftRideFinished(self):
		if save[LOCALS + 0] == 2 and save[Map3] == 0:
			op12_0x2cd0(actor=cast[3])
		else:
			save[LOCALS + 0] += 1
		
	def onLoad_maybe(self):
		if save[BrownJar] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [3]
class item_map_s3:
	def onTouchOrPushBlockStoppedMoving(self):
		save[Map3] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29491 # 0x7333, b's3'
		save[CELL_SELF + 1] = 12338 # 0x3032, b'02'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 29491 # 0x7333, b's3'
		save[CELL_DOWN + 1] = 12337 # 0x3031, b'01'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 29491 # 0x7333, b's3'
		save[CELL_RIGHT + 1] = 12339 # 0x3033, b'03'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 2 # 0x2, b'\x00\x02'
		enableIcePhysics()
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'NUMMON\x00\x00']],
]
