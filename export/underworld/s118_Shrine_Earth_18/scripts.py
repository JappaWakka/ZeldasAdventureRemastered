# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_llort:
	def onItemInteractOrSoundFileDone(self):
		showSparklesAndDespawn(actor=self)
		allowPlayerInputs = True
		save[130] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		if save[LLORT_DEFEATED] == 0 and save[130] == 0:
			spawnAndAnimate(actor=self)
			allowPlayerInputs = False
			playVoiceLine(source=self, soundId=0)
		
# Actor description 1
# Used for actors: []
class enemy_tektite:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [1, 2]
class env_torch:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29489 # 0x7331, b's1'
		save[CELL_SELF + 1] = 12600 # 0x3138, b'18'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 29489 # 0x7331, b's1'
		save[CELL_DOWN + 1] = 12599 # 0x3137, b'17'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 29489 # 0x7331, b's1'
		save[CELL_RIGHT + 1] = 12601 # 0x3139, b'19'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 18 # 0x12, b'\x00\x12'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
