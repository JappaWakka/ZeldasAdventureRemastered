# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_tektite:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [2]
class item_treasure_raft:
	def onTouchOrPushBlockStoppedMoving(self):
		save[Raft] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[Raft] < 1:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 107 # 0x6b, b'\x00k'
		save[CELL_SELF + 1] = 12597 # 0x3135, b'15'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 107 # 0x6b, b'\x00k'
		save[CELL_UP + 1] = 12596 # 0x3134, b'14'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 107 # 0x6b, b'\x00k'
		save[CELL_DOWN + 1] = 12598 # 0x3136, b'16'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 108 # 0x6c, b'\x00l'
		save[CELL_RIGHT + 1] = 12597 # 0x3135, b'15'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_LEFT + 1] = 12597 # 0x3135, b'15'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
