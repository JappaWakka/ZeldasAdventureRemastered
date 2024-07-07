# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_glebb:
	def onHitOrIteractIntercept(self):
		playVoiceLine(source=self, soundId=4)
		loseOneHeart()
		
	def onLoad_maybe(self):
		if save[VialOfWinds] == 0:
			spawnAndAnimate(actor=self)
		
		if save[GLEBB_SPOKE_FIRST_LINE] == 0 and save[FullWaterBottle] == 0 and save[VialOfWinds] == 0:
			playVoiceLine(source=self, soundId=0)
			save[GLEBB_SPOKE_FIRST_LINE] = 1 # 0x1, b'\x00\x01'
		
# Actor description 1
# Used for actors: [1]
class item_treasure_emptyWaterBottle:
	def onTouch(self):
		save[EmptyWaterBottle] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[EmptyWaterBottle] == 0 and save[VialOfWinds] == 0 and save[FullWaterBottle] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class item_treasure_vialOfWinds:
	def onTouch(self):
		save[VialOfWinds] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 0] == 0:
			playVoiceLine(source=self, soundId=3)
			save[FullWaterBottle] = 0 # 0x0, b'\x00\x00'
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		
		if save[LOCALS + 0] == 1:
			op12_0x2cd0(actor=cast[2])
			save[LOCALS + 0] = 2 # 0x2, b'\x00\x02'
			save[VialOfWinds] = 2 # 0x2, b'\x00\x02'
		
	def onLoad_maybe(self):
		if save[VialOfWinds] == 2:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_SELF + 1] = 12852 # 0x3234, b'24'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_UP + 1] = 12851 # 0x3233, b'23'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_DOWN + 1] = 12853 # 0x3235, b'25'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 105 # 0x69, b'\x00i'
		save[CELL_LEFT + 1] = 12852 # 0x3234, b'24'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
	def onTouchTrigger(self):
		if save[VialOfWinds] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'GLEBBCON\x00\x00']],
]
