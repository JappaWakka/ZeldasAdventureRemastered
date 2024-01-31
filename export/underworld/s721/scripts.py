# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_warbane:
	def onItemInteractOrSoundFileDone(self):
		despawn(actor=cast[0])
		allowPlayerInputs = True
		
	def onLoad_maybe(self):
		if save[WARBANE_DEFEATED] == 0 and save[RESPAWN_CELL_ID_maybe] == 20:
			spawnAndAnimate(actor=self)
			allowPlayerInputs = False
			playVoiceLine(source=self, soundId=0)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 20:
			player.x = 18
			player.y = 168
			setSpriteGroup(0) # Usually the sprite for UP
		
		save[CELL_SELF + 0] = 29495 # 0x7337, b's7'
		save[CELL_SELF + 1] = 12849 # 0x3231, b'21'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29495 # 0x7337, b's7'
		save[CELL_UP + 1] = 12850 # 0x3232, b'22'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 29495 # 0x7337, b's7'
		save[CELL_DOWN + 1] = 12848 # 0x3230, b'20'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 21 # 0x15, b'\x00\x15'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
