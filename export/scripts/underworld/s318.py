# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2]
class enemy_volta:
	def onDeathOrRaftRideFinished(self):
		save[148] += 1
		
		if save[148] == 3:
			despawn(actor=cast[3])
		
	def onLoad_maybe(self):
		if save[148] == 3:
			nop
		else:
			spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [3]
class enemy_floorSpikes_blue:
	def onLoad_maybe(self):
		if save[148] == 3:
			nop
		else:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 17:
			player.x = 130
			player.y = 168
			setSpriteGroup(0) # Usually the sprite for UP
		
		save[CELL_SELF + 0] = 29491 # 0x7333, b's3'
		save[CELL_SELF + 1] = 12600 # 0x3138, b'18'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 29491 # 0x7333, b's3'
		save[CELL_DOWN + 1] = 12599 # 0x3137, b'17'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29491 # 0x7333, b's3'
		save[CELL_LEFT + 1] = 12601 # 0x3139, b'19'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 18 # 0x12, b'\x00\x12'
		disableIcePhysics()
		
	def onTouchTrigger(self):
		if save[148] == 3:
			returnValue = 1
		else:
			returnValue = 0
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
