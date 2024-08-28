# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class env_celestialSign:
	def onTouchOrPushBlockStoppedMoving(self):
		save[SIGN_S6] = 1 # 0x1, b'\x00\x01'
		exitShrineAndPlayMovie(shrine=5)
		
	def onLoad_maybe(self):
		if save[SIGN_S6] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29493 # 0x7335, b's5'
		save[CELL_SELF + 1] = 12854 # 0x3236, b'26'
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
		save[CELL_LEFT + 0] = 29493 # 0x7335, b's5'
		save[CELL_LEFT + 1] = 12853 # 0x3235, b'25'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 26 # 0x1a, b'\x00\x1a'
		save[RESPAWN_TO_UNDERWORLD_VERSION] = 0 # 0x0, b'\x00\x00'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
