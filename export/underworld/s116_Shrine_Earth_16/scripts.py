# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2]
class enemy_tektite:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [3]
class item_treasure_redBoots:
	def onTouchOrPushBlockStoppedMoving(self):
		save[RedBoots] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[RedBoots] < 1:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [4, 5, 6]
class env_torch:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29489 # 0x7331, b's1'
		save[CELL_SELF + 1] = 12598 # 0x3136, b'16'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 29489 # 0x7331, b's1'
		save[CELL_DOWN + 1] = 12597 # 0x3135, b'15'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 29489 # 0x7331, b's1'
		save[CELL_RIGHT + 1] = 12599 # 0x3137, b'17'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 16 # 0x10, b'\x00\x10'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
