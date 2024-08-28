# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class env_celestialSign:
	def onTouchOrPushBlockStoppedMoving(self):
		save[SIGN_S4] = 1 # 0x1, b'\x00\x01'
		exitShrineAndPlayMovie(shrine=3)
		
	def onLoad_maybe(self):
		if save[SIGN_S4] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29491 # 0x7333, b's3'
		save[CELL_SELF + 1] = 12850 # 0x3232, b'22'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 29491 # 0x7333, b's3'
		save[CELL_DOWN + 1] = 12849 # 0x3231, b'21'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 22 # 0x16, b'\x00\x16'
		save[RESPAWN_TO_UNDERWORLD_VERSION] = 0 # 0x0, b'\x00\x00'
		enableIcePhysics()
		player.x = 154
		player.y = 144
		setSpriteGroup(0) # Usually the sprite for UP
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
