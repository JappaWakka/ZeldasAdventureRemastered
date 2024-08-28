# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_unknownActor24:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class item_treasure_candle:
	def onTouchOrPushBlockStoppedMoving(self):
		registerAsTreasureListener(actor=self)
		
	def onPurchaseOrAnimationComplete(self):
		if save[Candle] == 0:
			playVoiceLine(source=self, soundId=2)
			save[Candle] = 1 # 0x1, b'\x00\x01'
			showSparklesAndDespawn(actor=self)
		
	def onHitOrIteractIntercept(self):
		tryPurchaseItem(merchant=self)
		
	def onLoad_maybe(self):
		if save[Candle] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: []
class item_treasure_goldKey:
	def onTouchOrPushBlockStoppedMoving(self):
		registerAsTreasureListener(actor=self)
		
	def onPurchaseOrAnimationComplete(self):
		playVoiceLine(source=self, soundId=2)
		save[KEY_COUNT] += 1
		showSparklesAndDespawn(actor=self)
		
	def onHitOrIteractIntercept(self):
		tryPurchaseItem(merchant=self)
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: [2]
class item_treasure_magicShield:
	def onTouchOrPushBlockStoppedMoving(self):
		registerAsTreasureListener(actor=self)
		
	def onPurchaseOrAnimationComplete(self):
		if save[MagicShield] == 0:
			playVoiceLine(source=self, soundId=2)
			save[MagicShield] = 1 # 0x1, b'\x00\x01'
			showSparklesAndDespawn(actor=self)
		
	def onHitOrIteractIntercept(self):
		if save[MagicShield] == 0:
			tryPurchaseItem(merchant=self)
		
	def onLoad_maybe(self):
		if save[MagicShield] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 102 # 0x66, b'\x00f'
		save[CELL_SELF + 1] = 12854 # 0x3236, b'26'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 102 # 0x66, b'\x00f'
		save[CELL_UP + 1] = 12853 # 0x3235, b'25'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 1] = 12855 # 0x3237, b'27'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 103 # 0x67, b'\x00g'
		save[CELL_RIGHT + 1] = 12854 # 0x3236, b'26'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		
		if save[MERCHANT_VOICE_F26] == 0:
			playVoiceLine(source=self, soundId=0)
			save[MERCHANT_VOICE_F26] = 1 # 0x1, b'\x00\x01'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'CON\x00']],
]
