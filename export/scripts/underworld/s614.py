# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class env_switch:
	def onHitOrIteractIntercept(self):
		if save[LOCALS + 0] == 0:
			setSpriteGroup(1) # Usually the sprite for RIGHT
			op27b(actor=cast[1])
			op27b(actor=cast[2])
			op27a(actor=cast[3])
			op27a(actor=cast[4])
			op27a(actor=cast[5])
			op27a(actor=cast[6])
			op27a(actor=cast[7])
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		else:
			setSpriteGroup(0) # Usually the sprite for UP
			op27a(actor=cast[1])
			op27a(actor=cast[2])
			op27b(actor=cast[3])
			op27b(actor=cast[4])
			op27b(actor=cast[5])
			op27b(actor=cast[6])
			op27b(actor=cast[7])
			save[LOCALS + 0] = 0 # 0x0, b'\x00\x00'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1, 2, 3, 4, 5, 6, 7]
class enemy_floorSpikes:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 15:
			player.x = 126
			player.y = 40
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 29494 # 0x7336, b's6'
		save[CELL_SELF + 1] = 12596 # 0x3134, b'14'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29494 # 0x7336, b's6'
		save[CELL_UP + 1] = 12597 # 0x3135, b'15'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29494 # 0x7336, b's6'
		save[CELL_LEFT + 1] = 12595 # 0x3133, b'13'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 14 # 0xe, b'\x00\x0e'
		op27b(actor=cast[3])
		op27b(actor=cast[4])
		op27b(actor=cast[5])
		op27b(actor=cast[6])
		op27b(actor=cast[7])
		
	def onTouchTrigger(self):
		if save[LOCALS + 0] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'SWITCH\x00\x00']],
]
