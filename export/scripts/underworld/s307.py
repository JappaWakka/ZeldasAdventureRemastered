# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_vapora:
	def onLoad_maybe(self):
		if save[VAPORA_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 6:
			player.x = 22
			player.y = 128
			setSpriteGroup(1) # Usually the sprite for RIGHT
		else:
			player.x = 266
			player.y = 70
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		save[CELL_SELF + 0] = 29491 # 0x7333, b's3'
		save[CELL_SELF + 1] = 12343 # 0x3037, b'07'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29491 # 0x7333, b's3'
		save[CELL_RIGHT + 1] = 12344 # 0x3038, b'08'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 29491 # 0x7333, b's3'
		save[CELL_LEFT + 1] = 12342 # 0x3036, b'06'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 7 # 0x7, b'\x00\x07'
		enableIcePhysics()
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
