# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2, 3]
class env_unknownActor275:
	def onTouchOrPushBlockStoppedMoving(self):
		loseOneHeart()
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: []
class enemy_crystalShard:
	def onTouchOrPushBlockStoppedMoving(self):
		loseOneHeart()
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29491 # 0x7333, b's3'
		save[CELL_SELF + 1] = 12341 # 0x3035, b'05'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29491 # 0x7333, b's3'
		save[CELL_RIGHT + 1] = 12342 # 0x3036, b'06'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 29491 # 0x7333, b's3'
		save[CELL_LEFT + 1] = 12340 # 0x3034, b'04'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 5 # 0x5, b'\x00\x05'
		enableIcePhysics()
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
