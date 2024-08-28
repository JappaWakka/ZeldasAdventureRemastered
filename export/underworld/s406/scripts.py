# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_gibdo:
	def onDeathOrRaftRideFinished(self):
		if save[148] == 1:
			despawn(actor=cast[4])
			save[RAFT_JOURNEY_STATE] = 1 # 0x1, b'\x00\x01'
		
		if save[148] == 1 and save[Compass4] == 0:
			op12_0x2cd0(actor=cast[3])
			save[Compass4] = 2 # 0x2, b'\x00\x02'
		else:
			save[148] += 1
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [2]
class enemy_jack:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [3]
class item_compass_s4:
	def onTouchOrPushBlockStoppedMoving(self):
		save[Compass4] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[Compass4] == 2:
			spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: [4]
class enemy_floorSpikes_white:
	def onLoad_maybe(self):
		if save[RAFT_JOURNEY_STATE] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 5:
			player.x = 230
			player.y = 6
			setSpriteGroup(2) # Usually the sprite for DOWN
		else:
			player.x = 0
			player.y = 102
			setSpriteGroup(1) # Usually the sprite for RIGHT
		
		save[CELL_SELF + 0] = 29492 # 0x7334, b's4'
		save[CELL_SELF + 1] = 12342 # 0x3036, b'06'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29492 # 0x7334, b's4'
		save[CELL_UP + 1] = 12341 # 0x3035, b'05'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29492 # 0x7334, b's4'
		save[CELL_LEFT + 1] = 12343 # 0x3037, b'07'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_CELL_ID_maybe] = 6 # 0x6, b'\x00\x06'
		
	def onTouchTrigger(self):
		if save[RAFT_JOURNEY_STATE] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'GIBDEAD\x00']],
]
