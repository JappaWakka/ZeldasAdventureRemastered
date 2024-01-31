# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_wizzrobe:
	def onDeathOrRaftRideFinished(self):
		save[RAFT_JOURNEY_STATE] += 1
		
		if save[RAFT_JOURNEY_STATE] == 2 and save[Compass2] == 0:
			op12_0x2cd0(actor=cast[2])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class item_compass_s2:
	def onTouch(self):
		save[Compass2] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[RAFT_JOURNEY_STATE] == 2 and save[Compass2] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 11:
			player.x = 210
			player.y = 6
			setSpriteGroup(2) # Usually the sprite for DOWN
		else:
			player.x = 296
			player.y = 114
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		if save[RESPAWN_CELL_ID_maybe] == 8:
			player.x = 236
			player.y = 168
			setSpriteGroup(0) # Usually the sprite for UP
		
		save[CELL_SELF + 0] = 29490 # 0x7332, b's2'
		save[CELL_SELF + 1] = 12345 # 0x3039, b'09'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29490 # 0x7332, b's2'
		save[CELL_UP + 1] = 12593 # 0x3131, b'11'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 29490 # 0x7332, b's2'
		save[CELL_DOWN + 1] = 12344 # 0x3038, b'08'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 29490 # 0x7332, b's2'
		save[CELL_RIGHT + 1] = 12592 # 0x3130, b'10'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 9 # 0x9, b'\x00\t'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'NUMMON\x00\x00']],
]
