# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_lavaLizard:
	def onDeathOrRaftRideFinished(self):
		save[148] += 1
		
		if save[148] == 2:
			despawn(actor=cast[2])
			despawn(actor=cast[3])
			despawn(actor=cast[4])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2, 3, 4]
class env_tallFire:
	def onLoad_maybe(self):
		if save[148] == 2:
			nop
		else:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 8:
			player.x = 56
			player.y = 16
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 29495 # 0x7337, b's7'
		save[CELL_SELF + 1] = 12342 # 0x3036, b'06'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29495 # 0x7337, b's7'
		save[CELL_UP + 1] = 12343 # 0x3037, b'07'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 29495 # 0x7337, b's7'
		save[CELL_DOWN + 1] = 12339 # 0x3033, b'03'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29495 # 0x7337, b's7'
		save[CELL_LEFT + 1] = 12341 # 0x3035, b'05'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 6 # 0x6, b'\x00\x06'
		
	def onTouchTrigger(self):
		if save[148] == 2:
			returnValue = 1
		else:
			returnValue = 0
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
