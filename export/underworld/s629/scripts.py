# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class env_celestialSign:
	def onTouchOrPushBlockStoppedMoving(self):
		save[SIGN_S7] = 1 # 0x1, b'\x00\x01'
		exitShrineAndPlayMovie(shrine=6)
		
	def onLoad_maybe(self):
		if save[SIGN_S7] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29494 # 0x7336, b's6'
		save[CELL_SELF + 1] = 12857 # 0x3239, b'29'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29494 # 0x7336, b's6'
		save[CELL_RIGHT + 1] = 12856 # 0x3238, b'28'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 29 # 0x1d, b'\x00\x1d'
		save[RESPAWN_TO_UNDERWORLD_VERSION] = 0 # 0x0, b'\x00\x00'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
