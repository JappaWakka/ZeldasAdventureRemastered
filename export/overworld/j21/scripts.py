# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_moblin:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[CELL_ENTRY_DIRECTION] == 3:
			player.x = 274
			player.y = 92
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		save[CELL_SELF + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_SELF + 1] = 12849 # 0x3231, b'21'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_UP + 1] = 12848 # 0x3230, b'20'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_DOWN + 1] = 12850 # 0x3232, b'22'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 105 # 0x69, b'\x00i'
		save[CELL_LEFT + 1] = 12849 # 0x3231, b'21'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_RIGHT + 1] = 12849 # 0x3231, b'21'
		save[CELL_RIGHT + 2] = 24934 # 0x6166, b'af'
		setLocationOnMap(j20)
		
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
