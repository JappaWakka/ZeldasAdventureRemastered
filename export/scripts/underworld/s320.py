# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2]
class enemy_volta:
	def onLoad_maybe(self):
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 19:
			player.x = 268
			player.y = 140
			setSpriteGroup(3) # Usually the sprite for LEFT
		else:
			player.x = 144
			player.y = 0
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 1:
			player.x = 130
			player.y = 108
			setSpriteGroup(0) # Usually the sprite for UP
			save[148] = 3 # 0x3, b'\x00\x03'
			save[149] = 4 # 0x4, b'\x00\x04'
			save[140] = 1 # 0x1, b'\x00\x01'
		
		save[CELL_SELF + 0] = 29491 # 0x7333, b's3'
		save[CELL_SELF + 1] = 12848 # 0x3230, b'20'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29491 # 0x7333, b's3'
		save[CELL_UP + 1] = 12849 # 0x3231, b'21'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29491 # 0x7333, b's3'
		save[CELL_RIGHT + 1] = 12601 # 0x3139, b'19'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 20 # 0x14, b'\x00\x14'
		save[RESPAWN_TO_UNDERWORLD_VERSION] = 0 # 0x0, b'\x00\x00'
		disableIcePhysics()
		
		if save[AVIANA_DEFEATED] == 0 and save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 0:
			playVoiceLine(source=self, soundId=0)
		
		save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
		
# No local variables

