# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_pasquinade:
	def onItemInteractOrSoundFileDone(self):
		showSparklesAndDespawn(actor=self)
		allowPlayerInputs = True
		
	def onLoad_maybe(self):
		if save[PASQUINADE_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
			allowPlayerInputs = False
			playVoiceLine(source=self, soundId=0)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 16:
			player.x = 156
			player.y = 12
			setSpriteGroup(2) # Usually the sprite for DOWN
		else:
			player.x = 270
			player.y = 152
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		save[CELL_SELF + 0] = 29490 # 0x7332, b's2'
		save[CELL_SELF + 1] = 12599 # 0x3137, b'17'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29490 # 0x7332, b's2'
		save[CELL_UP + 1] = 12598 # 0x3136, b'16'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 17 # 0x11, b'\x00\x11'
		
	def onTouchTrigger(self):
		if save[120] == 0 and save[KEY_COUNT] > 0:
			save[KEY_COUNT] -= 1
			save[120] = 1 # 0x1, b'\x00\x01'
		else:
			returnValue = 0, playSoundEffect(source=self, soundId=2)
		
		if save[120] == 1:
			teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
# Local variables
local0 = 29490 # 0x7332, b's2'
local1 = 12600 # 0x3138, b'18'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
