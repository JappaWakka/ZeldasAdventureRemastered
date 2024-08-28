# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_zol:
	def onDeathOrRaftRideFinished(self):
		save[148] += 1
		
		if save[148] == 2 and save[Map5] == 0:
			op12_0x2cd0(actor=cast[2])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [2]
class item_map_s5:
	def onTouchOrPushBlockStoppedMoving(self):
		save[Map5] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[148] == 2 and save[Map5] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [3, 4, 5]
class enemy_wallSpike:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29493 # 0x7335, b's5'
		save[CELL_SELF + 1] = 12339 # 0x3033, b'03'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 29493 # 0x7335, b's5'
		save[CELL_DOWN + 1] = 12340 # 0x3034, b'04'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29493 # 0x7335, b's5'
		save[CELL_LEFT + 1] = 12338 # 0x3032, b'02'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 3 # 0x3, b'\x00\x03'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'NUMMON\x00\x00']],
]
