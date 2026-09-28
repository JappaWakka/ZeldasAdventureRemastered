# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2, 3]
class enemy_stalfos:
	def onDeathOrRaftRideFinished(self):
		save[148] += 1
		
		if save[148] == 4:
			despawn(actor=cast[4])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [4]
class enemy_floorSpikes:
	def onLoad_maybe(self):
		if save[148] == 4:
			nop
		else:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 18:
			player.x = 88
			player.y = 168
			setSpriteGroup(0) # Usually the sprite for UP
		else:
			player.x = 94
			player.y = 12
			setSpriteGroup(0) # Usually the sprite for UP
		
		save[CELL_SELF + 0] = 29490 # 0x7332, b's2'
		save[CELL_SELF + 1] = 12601 # 0x3139, b'19'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29490 # 0x7332, b's2'
		save[CELL_UP + 1] = 12848 # 0x3230, b'20'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 29490 # 0x7332, b's2'
		save[CELL_DOWN + 1] = 12600 # 0x3138, b'18'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 19 # 0x13, b'\x00\x13'
		
	def onTouchTrigger(self):
		if save[148] == 4:
			returnValue = 1
		else:
			returnValue = 0
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
