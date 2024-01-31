# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class env_switch:
	def onHitOrIteractIntercept(self):
		if save[RAFT_JOURNEY_STATE] == 0:
			setSpriteGroup(1) # Usually the sprite for RIGHT
			save[RAFT_JOURNEY_STATE] = 1 # 0x1, b'\x00\x01'
		else:
			setSpriteGroup(0) # Usually the sprite for UP
			save[RAFT_JOURNEY_STATE] = 0 # 0x0, b'\x00\x00'
		
		if save[RAFT_JOURNEY_STATE] == 1 and save[LOCALS + 0] == 0:
			spawnAndAnimate(actor=cast[1])
			spawnAndAnimate(actor=cast[2])
			spawnAndAnimate(actor=cast[3])
			spawnAndAnimate(actor=cast[4])
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
		if save[RAFT_JOURNEY_STATE] == 0:
			setSpriteGroup(0) # Usually the sprite for UP
		else:
			setSpriteGroup(1) # Usually the sprite for RIGHT
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 6:
			player.x = 40
			player.y = 6
			setSpriteGroup(2) # Usually the sprite for DOWN
		else:
			player.x = 70
			player.y = 168
			setSpriteGroup(0) # Usually the sprite for UP
		
		save[CELL_SELF + 0] = 29494 # 0x7336, b's6'
		save[CELL_SELF + 1] = 12343 # 0x3037, b'07'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29494 # 0x7336, b's6'
		save[CELL_UP + 1] = 12342 # 0x3036, b'06'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 29494 # 0x7336, b's6'
		save[CELL_DOWN + 1] = 12344 # 0x3038, b'08'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 7 # 0x7, b'\x00\x07'
		
	def onTouchTrigger(self):
		if save[LOCALS + 0] == 1:
			returnValue = 0
		else:
			returnValue = 1
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'SPIKESON\x00\x00']],
]
