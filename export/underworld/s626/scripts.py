# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_ironKnuckle:
	def onDeathOrRaftRideFinished(self):
		save[148] += 1
		
		if save[148] == 2:
			despawn(actor=cast[2])
		
	def onLoad_maybe(self):
		if save[RESPAWN_CELL_ID_maybe] == 25:
			spawnAndAnimate(actor=self)
		else:
			save[148] = 2 # 0x2, b'\x00\x02'
		
# Actor description 1
# Used for actors: [2]
class enemy_floorSpikes:
	def onLoad_maybe(self):
		if save[148] == 2:
			nop
		else:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29494 # 0x7336, b's6'
		save[CELL_SELF + 1] = 12854 # 0x3236, b'26'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29494 # 0x7336, b's6'
		save[CELL_RIGHT + 1] = 12853 # 0x3235, b'25'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 29494 # 0x7336, b's6'
		save[CELL_LEFT + 1] = 12855 # 0x3237, b'27'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 26 # 0x1a, b'\x00\x1a'
		
	def onTouchTrigger(self):
		if save[148] == 2:
			returnValue = 1
		else:
			returnValue = 0
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
