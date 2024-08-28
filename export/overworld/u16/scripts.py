# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_merchant_unknownActor181:
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 0] == 0:
			playVoiceLine(source=self, soundId=1)
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		
		if save[LOCALS + 0] == 1:
			playVoiceLine(source=self, soundId=2)
			save[LOCALS + 0] = 2 # 0x2, b'\x00\x02'
		
		if save[LOCALS + 0] == 2:
			op12_0x2cd0(actor=cast[1])
			playVoiceLine(source=self, soundId=3)
			save[LOCALS + 0] = 3 # 0x3, b'\x00\x03'
		
		if save[LOCALS + 0] == 3:
			playVoiceLine(source=self, soundId=4)
			save[LOCALS + 0] = 4 # 0x4, b'\x00\x04'
		
	def onLoad_maybe(self):
		if save[Map4] == 0:
			playVoiceLine(source=self, soundId=0)
			spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class item_map_s4:
	def onTouchOrPushBlockStoppedMoving(self):
		save[Map4] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 117 # 0x75, b'\x00u'
		save[CELL_SELF + 1] = 12598 # 0x3136, b'16'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 117 # 0x75, b'\x00u'
		save[CELL_UP + 1] = 12597 # 0x3135, b'15'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 117 # 0x75, b'\x00u'
		save[CELL_DOWN + 1] = 12599 # 0x3137, b'17'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 118 # 0x76, b'\x00v'
		save[CELL_RIGHT + 1] = 12598 # 0x3136, b'16'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 116 # 0x74, b'\x00t'
		save[CELL_LEFT + 1] = 12598 # 0x3136, b'16'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
	def onTouchTrigger(self):
		if save[AlligatorShoes] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'STAGE\x00']],
]
