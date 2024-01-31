# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_bolla:
	def onDeathOrRaftRideFinished(self):
		save[151] += 1
		
		if save[151] == 2:
			despawn(actor=cast[2])
			despawn(actor=cast[3])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2, 3]
class env_tallFire:
	def onLoad_maybe(self):
		if save[151] == 2:
			nop
		else:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 19:
			player.x = 296
			player.y = 100
			setSpriteGroup(3) # Usually the sprite for LEFT
		else:
			player.x = 44
			player.y = 10
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		save[CELL_SELF + 0] = 29495 # 0x7337, b's7'
		save[CELL_SELF + 1] = 12848 # 0x3230, b'20'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29495 # 0x7337, b's7'
		save[CELL_UP + 1] = 12849 # 0x3231, b'21'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 29495 # 0x7337, b's7'
		save[CELL_DOWN + 1] = 12599 # 0x3137, b'17'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 29495 # 0x7337, b's7'
		save[CELL_RIGHT + 1] = 12601 # 0x3139, b'19'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 20 # 0x14, b'\x00\x14'
		
	def onTouchTrigger(self):
		if save[151] == 2:
			returnValue = 1
		else:
			returnValue = 0
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
