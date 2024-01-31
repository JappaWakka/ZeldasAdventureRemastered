# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_warbane:
	def onItemInteractOrSoundFileDone(self):
		showSparklesAndDespawn(actor=self)
		allowPlayerInputs = True
		
		if save[Hammer] == 0:
			op12_0x2cd0(actor=cast[1])
		
	def onLoad_maybe(self):
		if save[WARBANE_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
			allowPlayerInputs = False
			playVoiceLine(source=self, soundId=0)
		
# Actor description 1
# Used for actors: [1]
class item_weapon_hammer:
	def onTouch(self):
		showSparklesAndDespawn(actor=self)
		save[Hammer] = 1 # 0x1, b'\x00\x01'
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 11:
			player.x = 160
			player.y = 10
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 29495 # 0x7337, b's7'
		save[CELL_SELF + 1] = 12594 # 0x3132, b'12'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29495 # 0x7337, b's7'
		save[CELL_UP + 1] = 12593 # 0x3131, b'11'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 29495 # 0x7337, b's7'
		save[CELL_DOWN + 1] = 12595 # 0x3133, b'13'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 12 # 0xc, b'\x00\x0c'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
