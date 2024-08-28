# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_madameKriggle:
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 0] == 0:
			playVoiceLine(source=self, soundId=1)
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		
		if save[LOCALS + 0] == 1:
			playVoiceLine(source=self, soundId=2)
			save[LOCALS + 0] = 2 # 0x2, b'\x00\x02'
		
		if save[LOCALS + 0] == 2:
			playVoiceLine(source=self, soundId=3)
			save[LOCALS + 0] = 3 # 0x3, b'\x00\x03'
		
	def onLoad_maybe(self):
		if save[JadeAmulet] == 1 and save[TurquoiseRing] == 1 and save[RingsOfFire] == 1:
			nop
		else:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=0)
		
# Actor description 1
# Used for actors: [1]
class item_weapon_turquoiseRing:
	def onTouchOrPushBlockStoppedMoving(self):
		registerAsTreasureListener(actor=self)
		
	def onPurchaseOrAnimationComplete(self):
		if save[TurquoiseRing] == 0:
			playVoiceLine(source=self, soundId=4)
			save[TurquoiseRing] = 1 # 0x1, b'\x00\x01'
			showSparklesAndDespawn(actor=self)
		
	def onHitOrIteractIntercept(self):
		if save[TurquoiseRing] == 0:
			tryPurchaseItem(merchant=self)
		
	def onLoad_maybe(self):
		if save[TurquoiseRing] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class item_weapon_jadeAmulet:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[JadeAmulet] == 0:
			registerAsTreasureListener(actor=self)
		
	def onPurchaseOrAnimationComplete(self):
		if save[JadeAmulet] == 0:
			playVoiceLine(source=self, soundId=4)
			save[JadeAmulet] = 1 # 0x1, b'\x00\x01'
			showSparklesAndDespawn(actor=self)
		
	def onHitOrIteractIntercept(self):
		tryPurchaseItem(merchant=self)
		
	def onLoad_maybe(self):
		if save[JadeAmulet] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: [3]
class item_weapon_ringsOfFire:
	def onTouchOrPushBlockStoppedMoving(self):
		registerAsTreasureListener(actor=self)
		
	def onPurchaseOrAnimationComplete(self):
		if save[RingsOfFire] == 0:
			playVoiceLine(source=self, soundId=4)
			save[RingsOfFire] = 1 # 0x1, b'\x00\x01'
			showSparklesAndDespawn(actor=self)
		
	def onHitOrIteractIntercept(self):
		if save[RingsOfFire] == 0:
			tryPurchaseItem(merchant=self)
		
	def onLoad_maybe(self):
		if save[RingsOfFire] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 107 # 0x6b, b'\x00k'
		save[CELL_SELF + 1] = 12595 # 0x3133, b'13'
		save[CELL_SELF + 2] = 25088 # 0x6200, b'b\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 107 # 0x6b, b'\x00k'
		save[CELL_DOWN + 1] = 12595 # 0x3133, b'13'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[INDOOR_ID] = 2 # 0x2, b'\x00\x02'
		player.x = 82
		player.y = 168
		setSpriteGroup(0) # Usually the sprite for UP
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'STAGE\x00']],
]
