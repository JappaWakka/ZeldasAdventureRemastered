# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_jackaroo:
	def onLoad_maybe(self):
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 22:
			player.x = 14
			player.y = 98
			setSpriteGroup(1) # Usually the sprite for RIGHT
		else:
			player.x = 138
			player.y = 20
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 1:
			save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
			player.x = 148
			player.y = 144
			setSpriteGroup(0) # Usually the sprite for UP
		
		save[CELL_SELF + 0] = 29490 # 0x7332, b's2'
		save[CELL_SELF + 1] = 12851 # 0x3233, b'23'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29490 # 0x7332, b's2'
		save[CELL_UP + 1] = 12852 # 0x3234, b'24'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29490 # 0x7332, b's2'
		save[CELL_LEFT + 1] = 12850 # 0x3232, b'22'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_TO_UNDERWORLD_VERSION] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 23 # 0x17, b'\x00\x17'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
