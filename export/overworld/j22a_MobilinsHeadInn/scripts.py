# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_moblinHeadInn_unknownActor58:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 3] == 0 and save[LOCALS + 9] == 0:
			playVoiceLine(source=self, soundId=5)
			save[LOCALS + 3] = 1 # 0x1, b'\x00\x01'
			save[LOCALS + 9] = 1 # 0x1, b'\x00\x01'
		
	def onItemInteractOrSoundFileDone(self):
		save[LOCALS + 9] = 0 # 0x0, b'\x00\x00'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class npc_moblinHeadInn_unknownActor59:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 4] == 0 and save[LOCALS + 9] == 0:
			playVoiceLine(source=self, soundId=11)
			save[LOCALS + 9] = 1 # 0x1, b'\x00\x01'
			save[LOCALS + 4] = 1 # 0x1, b'\x00\x01'
		
	def onItemInteractOrSoundFileDone(self):
		save[LOCALS + 9] = 0 # 0x0, b'\x00\x00'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class npc_tiredTraveler:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 7] == 1 and save[Calm] == 0 and save[LOCALS + 9] == 0:
			playVoiceLine(source=self, soundId=9)
			save[LOCALS + 9] = 1 # 0x1, b'\x00\x01'
			save[LOCALS + 7] += 1
		
	def onItemInteractOrSoundFileDone(self):
		save[LOCALS + 9] = 0 # 0x0, b'\x00\x00'
		save[LOCALS + 7] += 1
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		playVoiceLine(source=self, soundId=8)
		save[LOCALS + 9] = 1 # 0x1, b'\x00\x01'
		
# Actor description 3
# Used for actors: [3]
class item_treasure_candle:
	def onTouchOrPushBlockStoppedMoving(self):
		registerAsTreasureListener(actor=self)
		
	def onPurchaseOrAnimationComplete(self):
		save[Candle] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onHitOrIteractIntercept(self):
		tryPurchaseItem(merchant=self)
		
# Actor description 4
# Used for actors: [4]
class npc_krebb:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 6] == 1 and save[Dagger] == 0 and save[LOCALS + 9] == 0:
			playVoiceLine(source=self, soundId=1)
			save[LOCALS + 6] = 2 # 0x2, b'\x00\x02'
			save[LOCALS + 9] = 1 # 0x1, b'\x00\x01'
		
		if save[LOCALS + 6] == 0 and save[LOCALS + 9] == 0:
			playVoiceLine(source=self, soundId=0)
			save[LOCALS + 9] = 1 # 0x1, b'\x00\x01'
			save[LOCALS + 6] = 1 # 0x1, b'\x00\x01'
		
	def onItemInteractOrSoundFileDone(self):
		save[LOCALS + 9] = 0 # 0x0, b'\x00\x00'
		
		if save[LOCALS + 6] == 2:
			op12_0x2cd0(actor=cast[5])
			save[Dagger] = 2 # 0x2, b'\x00\x02'
		
	def onLoad_maybe(self):
		if save[Dagger] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 5
# Used for actors: [5]
class item_weapon_dagger:
	def onTouchOrPushBlockStoppedMoving(self):
		save[Dagger] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[Dagger] == 2:
			spawnAndAnimate(actor=self)
		
# Actor description 6
# Used for actors: [6]
class item_weapon_calm:
	def onTouchOrPushBlockStoppedMoving(self):
		registerAsTreasureListener(actor=self)
		
	def onPurchaseOrAnimationComplete(self):
		if save[Calm] == 0:
			playVoiceLine(source=self, soundId=10)
			showSparklesAndDespawn(actor=self)
			save[Calm] = 1 # 0x1, b'\x00\x01'
		
	def onHitOrIteractIntercept(self):
		if save[Calm] == 0:
			tryPurchaseItem(merchant=self)
		
	def onLoad_maybe(self):
		if save[Calm] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_SELF + 1] = 12850 # 0x3232, b'22'
		save[CELL_SELF + 2] = 24832 # 0x6100, b'a\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		player.x = 44
		player.y = 126
		save[INSIDE_MOBLIN_INN] = 1 # 0x1, b'\x00\x01'
		
	def onTouchTrigger(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
# Local variables
local0 = 106 # 0x6a, b'\x00j'
local1 = 12850 # 0x3232, b'22'
local2 = 102 # 0x66, b'\x00f'
local3 = 0 # 0x0, b'\x00\x00'
local4 = 0 # 0x0, b'\x00\x00'
local5 = 0 # 0x0, b'\x00\x00'
local6 = 0 # 0x0, b'\x00\x00'
local7 = 0 # 0x0, b'\x00\x00'
local8 = 0 # 0x0, b'\x00\x00'
local9 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00', b'KREBBCON\x00\x00', b'WOMANCON\x00\x00', b'WOMANCON2\x00', b'DEFCON\x00\x00', b'LOTCON\x00\x00', b'APPEAR\x00\x00', b'TALK\x00\x00']],
]
