# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_hag:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 0] == 0 and save[LOCALS + 1] == 0:
			playVoiceLine(source=self, soundId=1)
			loseOneHeart()
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		
	def onHitOrIteractIntercept(self):
		save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		playVoiceLine(source=self, soundId=2)
		save[HAG_DEFEATED] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 0] == 1:
			save[HAG_DEFEATED] = 1 # 0x1, b'\x00\x01'
		
		save[LOCALS + 1] = 0 # 0x0, b'\x00\x00'
		
	def onLoad_maybe(self):
		if save[HAG_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=0)
			save[LOCALS + 1] = 1 # 0x1, b'\x00\x01'
		
# Actor description 1
# Used for actors: [1]
class npc_hag_campfire:
	def onLoad_maybe(self):
		if save[HAG_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 104 # 0x68, b'\x00h'
		save[CELL_SELF + 1] = 12857 # 0x3239, b'29'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 104 # 0x68, b'\x00h'
		save[CELL_UP + 1] = 12856 # 0x3238, b'28'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 103 # 0x67, b'\x00g'
		save[CELL_LEFT + 1] = 12857 # 0x3239, b'29'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
	def onLeave(self):
		save[LOCALS + 0] = 0 # 0x0, b'\x00\x00'
		
	def onTouchTrigger(self):
		if save[HAG_DEFEATED] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 0 # 0x0, b'\x00\x00'
