# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_merchant_unknownActor189:
	def onLoad_maybe(self):
		playVoiceLine(source=self, soundId=0)
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class item_treasure_alligatorBoots:
	def onTouch(self):
		save[AlligatorShoes] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
# Actor description 2
# Used for actors: [2]
class item_treasure_deepFriedOctorokLegs:
	def onTouch(self):
		registerAsTreasureListener(actor=self)
		
	def onPurchaseOrAnimationComplete(self):
		save[WhiteOrb1] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onHitOrIteractIntercept(self):
		tryPurchaseItem(merchant=self)
		
	def onLoad_maybe(self):
		if save[WhiteOrb1] < 1:
			nop
		
# Actor description 3
# Used for actors: [3]
class item_treasure_repellent:
	def onTouch(self):
		registerAsTreasureListener(actor=self)
		
	def onPurchaseOrAnimationComplete(self):
		if save[Repellent] == 0:
			save[Repellent] = 1 # 0x1, b'\x00\x01'
			showSparklesAndDespawn(actor=self)
		
	def onHitOrIteractIntercept(self):
		if save[Repellent] == 0:
			tryPurchaseItem(merchant=self)
		
	def onLoad_maybe(self):
		if save[Repellent] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 118 # 0x76, b'\x00v'
		save[CELL_SELF + 1] = 12596 # 0x3134, b'14'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 118 # 0x76, b'\x00v'
		save[CELL_DOWN + 1] = 12597 # 0x3135, b'15'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 119 # 0x77, b'\x00w'
		save[CELL_RIGHT + 1] = 12596 # 0x3134, b'14'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 117 # 0x75, b'\x00u'
		save[CELL_LEFT + 1] = 12596 # 0x3134, b'14'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
	def onTouchTrigger(self):
		if always:
			returnValue = 0
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'STAGE\x00']],
]
