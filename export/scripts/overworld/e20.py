# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class item_treasure_fullWaterBottle:
	def onTouchOrPushBlockStoppedMoving(self):
		save[FullWaterBottle] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onItemInteractOrSoundFileDone(self):
		save[EmptyWaterBottle] = 0 # 0x0, b'\x00\x00'
		op12_0x2cd0(actor=cast[0])
		save[FullWaterBottle] = 2 # 0x2, b'\x00\x02'
		
	def onLoad_maybe(self):
		if save[FullWaterBottle] == 2:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 101 # 0x65, b'\x00e'
		save[CELL_SELF + 1] = 12848 # 0x3230, b'20'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 101 # 0x65, b'\x00e'
		save[CELL_DOWN + 1] = 12849 # 0x3231, b'21'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 1] = 12848 # 0x3230, b'20'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		
	def onTouchTrigger(self):
		if save[RedBoots] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# No local variables

