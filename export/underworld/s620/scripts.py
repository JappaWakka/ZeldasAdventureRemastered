# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_knight_blue:
	def onDeathOrRaftRideFinished(self):
		save[BLUE_KNIGHT_DEFEATED] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		if save[BLUE_KNIGHT_DEFEATED] == 0:
			playVoiceLine(source=self, soundId=0)
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29494 # 0x7336, b's6'
		save[CELL_SELF + 1] = 12848 # 0x3230, b'20'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29494 # 0x7336, b's6'
		save[CELL_UP + 1] = 12849 # 0x3231, b'21'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29494 # 0x7336, b's6'
		save[CELL_LEFT + 1] = 12601 # 0x3139, b'19'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 20 # 0x14, b'\x00\x14'
		
	def onTouchTrigger(self):
		if save[BLUE_KNIGHT_DEFEATED] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
