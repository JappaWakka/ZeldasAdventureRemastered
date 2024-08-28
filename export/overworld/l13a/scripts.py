# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_blacksmith:
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 0] == 0:
			playVoiceLine(source=self, soundId=1)
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		playVoiceLine(source=self, soundId=0)
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
class item_treasure_diamond:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[Diamond] == 2:
			save[Diamond] = 1 # 0x1, b'\x00\x01'
			rupees += 1000
			showSparklesAndDespawn(actor=self)
		
	def onItemInteractOrSoundFileDone(self):
		if save[Diamond] == 0 and save[Coal] == 1:
			playVoiceLine(source=self, soundId=3)
			save[Coal] = 0 # 0x0, b'\x00\x00'
			op12_0x2cd0(actor=cast[2])
			save[Diamond] = 2 # 0x2, b'\x00\x02'
		
	def onLoad_maybe(self):
		if save[Diamond] == 2:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 108 # 0x6c, b'\x00l'
		save[CELL_SELF + 1] = 12595 # 0x3133, b'13'
		save[CELL_SELF + 2] = 24832 # 0x6100, b'a\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 108 # 0x6c, b'\x00l'
		save[CELL_DOWN + 1] = 12595 # 0x3133, b'13'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[INDOOR_ID] = 1 # 0x1, b'\x00\x01'
		player.x = 118
		player.y = 168
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'STAGE\x00']],
]
