# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_greatFairy:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 110 # 0x6e, b'\x00n'
		save[CELL_SELF + 1] = 14592 # 0x3900, b'9\x00'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 110 # 0x6e, b'\x00n'
		save[CELL_UP + 1] = 14336 # 0x3800, b'8\x00'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 110 # 0x6e, b'\x00n'
		save[CELL_DOWN + 1] = 12592 # 0x3130, b'10'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 111 # 0x6f, b'\x00o'
		save[CELL_RIGHT + 1] = 14592 # 0x3900, b'9\x00'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 109 # 0x6d, b'\x00m'
		save[CELL_LEFT + 1] = 14592 # 0x3900, b'9\x00'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
	def onRespawn_maybe(self):
		save[LOCALS + 0] = 0 # 0x0, b'\x00\x00'
		
	def onTouchTrigger(self):
		if save[LOCALS + 0] == 0:
			spawnAndAnimate(actor=cast[1])
			spawnAndAnimate(actor=cast[2])
			spawnAndAnimate(actor=cast[3])
			spawnAndAnimate(actor=cast[4])
			spawnAndAnimate(actor=cast[5])
			spawnAndAnimate(actor=cast[6])
			spawnAndAnimate(actor=cast[7])
			spawnAndAnimate(actor=cast[8])
			setUnusedGlobal(player.maxHealth), healToFull()
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'RESTORED\x00\x00']],
]
