# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_guard:
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 0] == 0:
			op12_0x2cd0(actor=cast[1])
			playVoiceLine(source=self, soundId=9)
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		if save[Broadsword] == 0:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=0)
		else:
			spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class item_weapon_broadsword:
	def onTouchOrPushBlockStoppedMoving(self):
		save[Broadsword] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 112 # 0x70, b'\x00p'
		save[CELL_SELF + 1] = 14336 # 0x3800, b'8\x00'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 112 # 0x70, b'\x00p'
		save[CELL_DOWN + 1] = 14592 # 0x3900, b'9\x00'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 113 # 0x71, b'\x00q'
		save[CELL_RIGHT + 1] = 14336 # 0x3800, b'8\x00'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 111 # 0x6f, b'\x00o'
		save[CELL_LEFT + 1] = 14336 # 0x3800, b'8\x00'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
	def onTouchTrigger(self):
		if save[RedBoots] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'STAGE\x00']],
]
