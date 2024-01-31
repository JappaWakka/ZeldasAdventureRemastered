# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_archer:
	def onDeathOrRaftRideFinished(self):
		save[RAFT_JOURNEY_STATE] = 1 # 0x1, b'\x00\x01'
		despawn(actor=cast[1])
		
	def onLoad_maybe(self):
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [1]
class enemy_floorSpikes_white:
	def onLoad_maybe(self):
		if save[RAFT_JOURNEY_STATE] == 0 and save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: [2, 3, 4]
class enemy_floorSpikes_white:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 23:
			player.x = 6
			player.y = 92
			setSpriteGroup(1) # Usually the sprite for RIGHT
		
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 1:
			save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
			player.x = 142
			player.y = 104
			setSpriteGroup(0) # Usually the sprite for UP
			save[RAFT_JOURNEY_STATE] = 1 # 0x1, b'\x00\x01'
		
		save[CELL_SELF + 0] = 29495 # 0x7337, b's7'
		save[CELL_SELF + 1] = 12850 # 0x3232, b'22'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 29495 # 0x7337, b's7'
		save[CELL_DOWN + 1] = 12849 # 0x3231, b'21'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29495 # 0x7337, b's7'
		save[CELL_LEFT + 1] = 12851 # 0x3233, b'23'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_CELL_ID_maybe] = 22 # 0x16, b'\x00\x16'
		save[RESPAWN_TO_UNDERWORLD_VERSION] = 0 # 0x0, b'\x00\x00'
		
	def onTouchTrigger(self):
		if save[RAFT_JOURNEY_STATE] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
