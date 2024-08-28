# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class env_switch:
	def onHitOrIteractIntercept(self):
		if save[LOCALS + 0] == 0:
			setSpriteGroup(1) # Usually the sprite for RIGHT
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
			show(actor=cast[3])
			show(actor=cast[4])
		else:
			setSpriteGroup(0) # Usually the sprite for UP
			save[LOCALS + 0] = 0 # 0x0, b'\x00\x00'
			hide(actor=cast[3])
			hide(actor=cast[4])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		spawnAndAnimate(actor=cast[3])
		spawnAndAnimate(actor=cast[4])
		hide(actor=cast[3])
		hide(actor=cast[4])
		
# Actor description 1
# Used for actors: [1]
class env_switch:
	def onHitOrIteractIntercept(self):
		if save[LOCALS + 1] == 0:
			setSpriteGroup(1) # Usually the sprite for RIGHT
			save[LOCALS + 1] = 1 # 0x1, b'\x00\x01'
		else:
			setSpriteGroup(0) # Usually the sprite for UP
			save[LOCALS + 1] = 0 # 0x0, b'\x00\x00'
		
		if save[LOCALS + 1] == 1 and save[RoarStick] == 0 and save[LOCALS + 2] == 0:
			op12_0x2cd0(actor=cast[5])
			save[LOCALS + 2] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class enemy_floorSpikes:
	def onLoad_maybe(self):
		if save[RAFT_JOURNEY_STATE] == 0:
			spawnAndAnimate(actor=self)
		else:
			save[LOCALS + 3] = 1 # 0x1, b'\x00\x01'
		
# Actor description 4
# Used for actors: [5]
class item_weapon_roarStick:
	def onTouchOrPushBlockStoppedMoving(self):
		save[RoarStick] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 7:
			player.x = 88
			player.y = 36
			setSpriteGroup(2) # Usually the sprite for DOWN
		else:
			player.x = 292
			player.y = 100
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		save[CELL_SELF + 0] = 29494 # 0x7336, b's6'
		save[CELL_SELF + 1] = 12344 # 0x3038, b'08'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29494 # 0x7336, b's6'
		save[CELL_UP + 1] = 12343 # 0x3037, b'07'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 8 # 0x8, b'\x00\x08'
		
		if save[LOCALS + 3] == 1:
			save[CELL_RIGHT + 0] = 29494 # 0x7336, b's6'
			save[CELL_RIGHT + 1] = 12345 # 0x3039, b'09'
			save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		
	def onTouchTrigger(self):
		if save[LOCALS + 0] == 0:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 0 # 0x0, b'\x00\x00'
local2 = 0 # 0x0, b'\x00\x00'
local3 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'SWITCH1\x00', b'SWITCH2\x00', b'ROARDOWN\x00\x00', b'GOEAST\x00\x00']],
]
