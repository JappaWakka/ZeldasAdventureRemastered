# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class env_celestialSign:
	def onTouchOrPushBlockStoppedMoving(self):
		save[SIGN_S5] = 1 # 0x1, b'\x00\x01'
		exitShrineAndPlayMovie(shrine=4)
		
	def onLoad_maybe(self):
		if save[SIGN_S5] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29492 # 0x7334, b's4'
		save[CELL_SELF + 1] = 12851 # 0x3233, b'23'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29492 # 0x7334, b's4'
		save[CELL_UP + 1] = 12850 # 0x3232, b'22'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 23 # 0x17, b'\x00\x17'
		player.x = 20
		player.y = 76
		setSpriteGroup(1) # Usually the sprite for RIGHT
		save[RESPAWN_TO_UNDERWORLD_VERSION] = 0 # 0x0, b'\x00\x00'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
