# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_sardak_yellow:
	def onDeathOrRaftRideFinished(self):
		save[125] = 1 # 0x1, b'\x00\x01'
		playVoiceLine(source=self, soundId=2)
		
		if save[123] == 1 and save[124] == 1 and save[125] == 1:
			despawn(actor=cast[1])
		
	def onLoad_maybe(self):
		if save[125] == 0 and save[LLORT_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=0)
		
# Actor description 2
# Used for actors: [1]
class env_laserWall:
	def onLoad_maybe(self):
		if save[123] == 1 and save[124] == 1 and save[125] == 1:
			nop
		else:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 1:
			save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
			player.x = 46
			player.y = 100
			setSpriteGroup(1) # Usually the sprite for RIGHT
		
		save[CELL_SELF + 0] = 29489 # 0x7331, b's1'
		save[CELL_SELF + 1] = 12848 # 0x3230, b'20'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29489 # 0x7331, b's1'
		save[CELL_UP + 1] = 12849 # 0x3231, b'21'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29489 # 0x7331, b's1'
		save[CELL_LEFT + 1] = 12601 # 0x3139, b'19'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 20 # 0x14, b'\x00\x14'
		save[RESPAWN_TO_UNDERWORLD_VERSION] = 0 # 0x0, b'\x00\x00'
		
	def onTouchTrigger(self):
		if save[123] == 1 and save[124] == 1 and save[125] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
