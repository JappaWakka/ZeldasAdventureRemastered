# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_deeler:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 1:
			save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
			player.x = 282
			player.y = 92
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_SELF + 1] = 12592 # 0x3130, b'10'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_DOWN + 1] = 12593 # 0x3131, b'11'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 107 # 0x6b, b'\x00k'
		save[CELL_RIGHT + 1] = 12592 # 0x3130, b'10'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 105 # 0x69, b'\x00i'
		save[CELL_LEFT + 1] = 12592 # 0x3130, b'10'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
