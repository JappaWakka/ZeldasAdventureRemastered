# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_quarryMiner:
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 0] == 0 and save[Diamond] == 0 and save[Coal] == 0:
			playVoiceLine(source=self, soundId=3)
			op12_0x2cd0(actor=cast[1])
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		if always and save[Diamond] == 0 and save[Coal] == 0:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=0)
		
# Actor description 1
# Used for actors: [1]
class item_treasure_coal:
	def onTouchOrPushBlockStoppedMoving(self):
		save[Coal] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 24929 # 0x6161, b'aa'
		save[CELL_SELF + 1] = 12597 # 0x3135, b'15'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 24929 # 0x6161, b'aa'
		save[CELL_DOWN + 1] = 12598 # 0x3136, b'16'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 122 # 0x7a, b'\x00z'
		save[CELL_LEFT + 1] = 12597 # 0x3135, b'15'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'STAGE\x00']],
]
