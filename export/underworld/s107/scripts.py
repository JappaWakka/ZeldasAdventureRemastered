# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_sardak_red:
	def onDeathOrRaftRideFinished(self):
		save[124] = 1 # 0x1, b'\x00\x01'
		playVoiceLine(source=self, soundId=2)
		
	def onLoad_maybe(self):
		if save[124] == 0 and save[LLORT_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=0)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29489 # 0x7331, b's1'
		save[CELL_SELF + 1] = 12343 # 0x3037, b'07'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 29489 # 0x7331, b's1'
		save[CELL_DOWN + 1] = 12344 # 0x3038, b'08'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29489 # 0x7331, b's1'
		save[CELL_LEFT + 1] = 12342 # 0x3036, b'06'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 7 # 0x7, b'\x00\x07'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
