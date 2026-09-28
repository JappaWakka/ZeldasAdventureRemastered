# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_polsVoice:
	def onDeathOrRaftRideFinished(self):
		save[137] = 1 # 0x1, b'\x00\x01'
		despawn(actor=cast[1])
		despawn(actor=cast[2])
		
	def onLoad_maybe(self):
		if save[137] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class env_barrier_s2_left:
	def onLoad_maybe(self):
		if save[137] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class env_barrier_s2_right:
	def onLoad_maybe(self):
		if save[137] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 6:
			player.x = 24
			player.y = 92
			setSpriteGroup(1) # Usually the sprite for RIGHT
		else:
			player.x = 204
			player.y = 168
			setSpriteGroup(0) # Usually the sprite for UP
		
		if save[RESPAWN_CELL_ID_maybe] == 8:
			player.x = 276
			player.y = 90
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		save[CELL_SELF + 0] = 29490 # 0x7332, b's2'
		save[CELL_SELF + 1] = 12343 # 0x3037, b'07'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 29490 # 0x7332, b's2'
		save[CELL_DOWN + 1] = 12339 # 0x3033, b'03'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 29490 # 0x7332, b's2'
		save[CELL_RIGHT + 1] = 12344 # 0x3038, b'08'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 29490 # 0x7332, b's2'
		save[CELL_LEFT + 1] = 12342 # 0x3036, b'06'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_CELL_ID_maybe] = 7 # 0x7, b'\x00\x07'
		
	def onTouchTrigger(self):
		if save[137] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
