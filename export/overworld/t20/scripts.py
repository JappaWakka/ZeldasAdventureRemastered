# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_merchant_unknownActor179:
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 0] == 0:
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
			playVoiceLine(source=self, soundId=1)
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		playVoiceLine(source=self, soundId=0)
		
# Actor description 1
# Used for actors: [1]
class item_treasure_candle:
	def onTouch(self):
		registerAsTreasureListener(actor=self)
		
	def onPurchaseOrAnimationComplete(self):
		if save[Candle] == 0:
			save[Candle] = 1 # 0x1, b'\x00\x01'
			showSparklesAndDespawn(actor=self)
		
	def onHitOrIteractIntercept(self):
		if save[Candle] == 0:
			tryPurchaseItem(merchant=self)
		
	def onLoad_maybe(self):
		if save[Candle] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: []
class item_treasure_goldKey:
	def onTouch(self):
		registerAsTreasureListener(actor=self)
		
	def onPurchaseOrAnimationComplete(self):
		save[KEY_COUNT] += 1
		showSparklesAndDespawn(actor=self)
		
	def onHitOrIteractIntercept(self):
		tryPurchaseItem(merchant=self)
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: [2]
class item_treasure_lifePotion:
	def onTouch(self):
		registerAsTreasureListener(actor=self)
		
	def onPurchaseOrAnimationComplete(self):
		if save[LifePotion] == 0:
			save[LifePotion] = 1 # 0x1, b'\x00\x01'
			showSparklesAndDespawn(actor=self)
		
	def onHitOrIteractIntercept(self):
		if save[LifePotion] == 0:
			tryPurchaseItem(merchant=self)
		
	def onLoad_maybe(self):
		if save[LifePotion] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 116 # 0x74, b'\x00t'
		save[CELL_SELF + 1] = 12848 # 0x3230, b'20'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 116 # 0x74, b'\x00t'
		save[CELL_UP + 1] = 12601 # 0x3139, b'19'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 117 # 0x75, b'\x00u'
		save[CELL_RIGHT + 1] = 12848 # 0x3230, b'20'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 1] = 12848 # 0x3230, b'20'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
	def onTouchTrigger(self):
		if save[AlligatorShoes] == 1:
			returnValue = 1
		else:
			returnValue = 4
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'STAGE\x00']],
]
