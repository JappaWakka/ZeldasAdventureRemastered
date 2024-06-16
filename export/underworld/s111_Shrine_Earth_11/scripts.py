# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_keese:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29489 # 0x7331, b's1'
		save[CELL_SELF + 1] = 12593 # 0x3131, b'11'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29489 # 0x7331, b's1'
		save[CELL_UP + 1] = 12595 # 0x3133, b'13'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 29489 # 0x7331, b's1'
		save[CELL_DOWN + 1] = 12345 # 0x3039, b'09'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 29489 # 0x7331, b's1'
		save[CELL_RIGHT + 1] = 12594 # 0x3132, b'12'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 11 # 0xb, b'\x00\x0b'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
