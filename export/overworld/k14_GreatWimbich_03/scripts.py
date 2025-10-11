# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_townMerchant:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 1] == 0:
			playVoiceLine(source=self, soundId=6)
			save[LOCALS + 1] = 1 # 0x1, b'\x00\x01'
		
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 2] == 0:
			playVoiceLine(source=self, soundId=7)
			save[LOCALS + 2] = 1 # 0x1, b'\x00\x01'
		
		if save[LOCALS + 2] == 1:
			playVoiceLine(source=self, soundId=8)
			save[LOCALS + 2] = 2 # 0x2, b'\x00\x02'
		
	def onLoad_maybe(self):
		if save[Candle] == 1 and save[LifePotion] == 1:
			nop
		else:
			spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class item_treasure_candle:
	def onTouchOrPushBlockStoppedMoving(self):
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
# Used for actors: [2]
class item_treasure_lifePotion:
	def onTouchOrPushBlockStoppedMoving(self):
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
		
# Actor description 3
# Used for actors: [3]
class npc_blacksmith:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 107 # 0x6b, b'\x00k'
		save[CELL_SELF + 1] = 12596 # 0x3134, b'14'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 107 # 0x6b, b'\x00k'
		save[CELL_UP + 1] = 12595 # 0x3133, b'13'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 107 # 0x6b, b'\x00k'
		save[CELL_DOWN + 1] = 12597 # 0x3135, b'15'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 108 # 0x6c, b'\x00l'
		save[CELL_RIGHT + 1] = 12596 # 0x3134, b'14'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 0 # 0x0, b'\x00\x00'
local2 = 0 # 0x0, b'\x00\x00'
local3 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'ROWELLCON\x00', b'WOMANCON\x00\x00', b'STAGE\x00', b'STAGE2\x00\x00']],
]
