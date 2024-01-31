# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_knight_red:
	def onDeathOrRaftRideFinished(self):
		save[RED_KNIGHT_DEFEATED] = 1 # 0x1, b'\x00\x01'
		despawn(actor=cast[1])
		despawn(actor=cast[2])
		
	def onLoad_maybe(self):
		if save[RED_KNIGHT_DEFEATED] == 0 and save[RedBow] == 1:
			playVoiceLine(source=self, soundId=0)
			spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1, 2]
class enemy_floorSpikes:
	def onLoad_maybe(self):
		if save[RED_KNIGHT_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 13:
			player.y = 274
			player.y = 102
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		save[CELL_SELF + 0] = 29494 # 0x7336, b's6'
		save[CELL_SELF + 1] = 12594 # 0x3132, b'12'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29494 # 0x7336, b's6'
		save[CELL_RIGHT + 1] = 12595 # 0x3133, b'13'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 29494 # 0x7336, b's6'
		save[CELL_LEFT + 1] = 12593 # 0x3131, b'11'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 12 # 0xc, b'\x00\x0c'
		tryRemoveCellFromUnkList(cellId=12)
		
	def onTouchTrigger(self):
		if save[RED_KNIGHT_DEFEATED] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
