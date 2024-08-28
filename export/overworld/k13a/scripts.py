# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_shopkeeperAndKnave_unknownActor72:
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 0] == 1:
			playVoiceLine(source=self, soundId=4)
			save[LOCALS + 0] = 2 # 0x2, b'\x00\x02'
		
		if save[LOCALS + 0] == 2:
			playVoiceLine(source=self, soundId=1)
			save[LOCALS + 0] = 2 # 0x2, b'\x00\x02'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		playVoiceLine(source=self, soundId=0)
		
# Actor description 1
# Used for actors: [1]
class npc_shopkeeperAndKnave_unknownActor73:
	def onTouchOrPushBlockStoppedMoving(self):
		playVoiceLine(source=self, soundId=5)
		
	def onItemInteractOrSoundFileDone(self):
		playVoiceLine(source=self, soundId=6)
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class item_treasure_bone:
	def onTouchOrPushBlockStoppedMoving(self):
		registerAsTreasureListener(actor=self)
		
	def onPurchaseOrAnimationComplete(self):
		if save[Bone] == 0:
			playVoiceLine(source=self, soundId=2)
			save[Bone] = 1 # 0x1, b'\x00\x01'
			showSparklesAndDespawn(actor=self)
		
	def onHitOrIteractIntercept(self):
		if save[Bone] == 0:
			tryPurchaseItem(merchant=self)
		
	def onLoad_maybe(self):
		if save[Bone] == 0 and save[ShortAxe] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 107 # 0x6b, b'\x00k'
		save[CELL_SELF + 1] = 12595 # 0x3133, b'13'
		save[CELL_SELF + 2] = 24832 # 0x6100, b'a\x00'
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
		player.x = 160
		player.y = 168
		save[INDOOR_ID] = 1 # 0x1, b'\x00\x01'
		setSpriteGroup(0) # Usually the sprite for UP
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'STAGE\x00']],
]
