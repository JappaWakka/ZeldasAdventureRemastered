# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_spearThrower:
	def onDeathOrRaftRideFinished(self):
		save[TELEPORTED_maybe] = 1 # 0x1, b'\x00\x01'
		
		if save[Compass7] == 0:
			op12_0x2cd0(actor=cast[1])
			save[Compass7] = 2 # 0x2, b'\x00\x02'
		
	def onLoad_maybe(self):
		if save[TELEPORTED_maybe] == 0:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=0)
		
# Actor description 2
# Used for actors: [1]
class item_compass_s7:
	def onTouchOrPushBlockStoppedMoving(self):
		save[Compass7] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[Compass7] == 2:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 5:
			player.x = 150
			player.y = 22
			setSpriteGroup(0) # Usually the sprite for UP
		
		save[CELL_SELF + 0] = 29495 # 0x7337, b's7'
		save[CELL_SELF + 1] = 12340 # 0x3034, b'04'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29495 # 0x7337, b's7'
		save[CELL_UP + 1] = 12341 # 0x3035, b'05'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29495 # 0x7337, b's7'
		save[CELL_RIGHT + 1] = 12339 # 0x3033, b'03'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 4 # 0x4, b'\x00\x04'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
