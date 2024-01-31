# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_spearThrower:
	def onDeathOrRaftRideFinished(self):
		save[140] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		if save[140] == 0:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=0)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29495 # 0x7337, b's7'
		save[CELL_SELF + 1] = 12339 # 0x3033, b'03'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29495 # 0x7337, b's7'
		save[CELL_UP + 1] = 12342 # 0x3036, b'06'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29495 # 0x7337, b's7'
		save[CELL_RIGHT + 1] = 12338 # 0x3032, b'02'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 29495 # 0x7337, b's7'
		save[CELL_LEFT + 1] = 12340 # 0x3034, b'04'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 3 # 0x3, b'\x00\x03'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
