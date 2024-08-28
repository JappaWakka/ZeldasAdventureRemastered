# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class env_unknownActor288:
	def onLoad_maybe(self):
		if save[140] == 1:
			spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class env_switch_floatingSkull:
	def onDeathOrRaftRideFinished(self):
		spawnAndAnimate(actor=cast[0])
		save[140] = 1 # 0x1, b'\x00\x01'
		despawn(actor=cast[2])
		
	def onLoad_maybe(self):
		if save[140] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class env_unknownActor275:
	def onTouchOrPushBlockStoppedMoving(self):
		loseOneHeart()
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: []
class enemy_crystalShard:
	def onTouchOrPushBlockStoppedMoving(self):
		loseOneHeart()
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29491 # 0x7333, b's3'
		save[CELL_SELF + 1] = 12601 # 0x3139, b'19'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29491 # 0x7333, b's3'
		save[CELL_RIGHT + 1] = 12600 # 0x3138, b'18'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 29491 # 0x7333, b's3'
		save[CELL_LEFT + 1] = 12848 # 0x3230, b'20'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_CELL_ID_maybe] = 19 # 0x13, b'\x00\x13'
		enableIcePhysics()
		
	def onTouchTrigger(self):
		if save[140] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'BRIDGE\x00\x00']],
]
