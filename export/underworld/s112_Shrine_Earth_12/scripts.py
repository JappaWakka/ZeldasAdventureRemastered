# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_sardak_blue:
	def onDeathOrRaftRideFinished(self):
		save[123] = 1 # 0x1, b'\x00\x01'
		playVoiceLine(source=self, soundId=2)
		
	def onLoad_maybe(self):
		if save[123] == 0 and save[LLORT_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=0)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29489 # 0x7331, b's1'
		save[CELL_SELF + 1] = 12594 # 0x3132, b'12'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29489 # 0x7331, b's1'
		save[CELL_LEFT + 1] = 12593 # 0x3131, b'11'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_CELL_ID_maybe] = 12 # 0xc, b'\x00\x0c'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
