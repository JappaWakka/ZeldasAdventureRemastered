# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_talkingChest:
	def onItemInteractOrSoundFileDone(self):
		if save[JadeRing] == 0:
			op12_0x2cd0(actor=cast[1])
		
	def onLoad_maybe(self):
		if save[JadeRing] == 0:
			playVoiceLine(source=self, soundId=0)
			spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class item_weapon_jadeRing:
	def onTouchOrPushBlockStoppedMoving(self):
		save[JadeRing] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29489 # 0x7331, b's1'
		save[CELL_SELF + 1] = 12344 # 0x3038, b'08'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29489 # 0x7331, b's1'
		save[CELL_UP + 1] = 12343 # 0x3037, b'07'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29489 # 0x7331, b's1'
		save[CELL_RIGHT + 1] = 12345 # 0x3039, b'09'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 8 # 0x8, b'\x00\x08'
		
		if save[109] == 0:
			save[109] = 1 # 0x1, b'\x00\x01'
		
	def onTouchTrigger(self):
		if save[Compass1] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
