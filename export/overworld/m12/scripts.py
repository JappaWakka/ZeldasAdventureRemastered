# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_moblin:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 1:
			save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
			player.x = 22
			player.y = 108
			setSpriteGroup(1) # Usually the sprite for RIGHT
		
		save[CELL_SELF + 0] = 109 # 0x6d, b'\x00m'
		save[CELL_SELF + 1] = 12594 # 0x3132, b'12'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 109 # 0x6d, b'\x00m'
		save[CELL_UP + 1] = 12593 # 0x3131, b'11'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 109 # 0x6d, b'\x00m'
		save[CELL_DOWN + 1] = 12595 # 0x3133, b'13'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 110 # 0x6e, b'\x00n'
		save[CELL_RIGHT + 1] = 12594 # 0x3132, b'12'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 108 # 0x6c, b'\x00l'
		save[CELL_LEFT + 1] = 12594 # 0x3132, b'12'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
	def onTouchTrigger(self):
		if save[RedBoots] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
