# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2]
class enemy_gibdo:
	def onDeathOrRaftRideFinished(self):
		save[149] += 1
		
		if save[149] == 1:
			spawnAndAnimate(actor=cast[3])
		
		if save[149] == 2:
			spawnAndAnimate(actor=cast[4])
		
		if save[149] == 3:
			spawnAndAnimate(actor=cast[5])
			despawn(actor=cast[6])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [3, 4, 5]
class enemy_jack:
	def onLoad_maybe(self):
		if save[149] == 3:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [6]
class enemy_floorSpikes_white:
	def onLoad_maybe(self):
		if save[149] == 3:
			nop
		else:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 6:
			player.x = 296
			player.y = 104
			setSpriteGroup(3) # Usually the sprite for LEFT
		else:
			player.x = 12
			player.y = 106
			setSpriteGroup(1) # Usually the sprite for RIGHT
		
		save[CELL_SELF + 0] = 29492 # 0x7334, b's4'
		save[CELL_SELF + 1] = 12343 # 0x3037, b'07'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29492 # 0x7334, b's4'
		save[CELL_RIGHT + 1] = 12342 # 0x3036, b'06'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 29492 # 0x7334, b's4'
		save[CELL_LEFT + 1] = 12344 # 0x3038, b'08'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 7 # 0x7, b'\x00\x07'
		
	def onTouchTrigger(self):
		if save[149] == 3:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'GIBDEAD\x00']],
]
