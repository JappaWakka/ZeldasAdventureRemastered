# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class env_switch:
	def onHitOrIteractIntercept(self):
		if save[LOCALS + 0] == 0:
			setSpriteGroup(1) # Usually the sprite for RIGHT
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		else:
			setSpriteGroup(0) # Usually the sprite for UP
			save[LOCALS + 0] = 0 # 0x0, b'\x00\x00'
		
		if save[LOCALS + 0] == 1 and save[LOCALS + 1] == 0 and save[LOCALS + 2] == 1 and save[140] == 0:
			save[140] = 1 # 0x1, b'\x00\x01'
			despawn(actor=cast[3])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [2]
class env_switch:
	def onHitOrIteractIntercept(self):
		if save[LOCALS + 1] == 0:
			setSpriteGroup(1) # Usually the sprite for RIGHT
			save[LOCALS + 1] = 1 # 0x1, b'\x00\x01'
		else:
			setSpriteGroup(0) # Usually the sprite for UP
			save[LOCALS + 1] = 0 # 0x0, b'\x00\x00'
		
		if save[LOCALS + 0] == 1 and save[LOCALS + 1] == 0 and save[LOCALS + 2] == 1 and save[140] == 0:
			save[140] = 1 # 0x1, b'\x00\x01'
			despawn(actor=cast[3])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [1]
class env_switch:
	def onHitOrIteractIntercept(self):
		if save[LOCALS + 2] == 0:
			setSpriteGroup(1) # Usually the sprite for RIGHT
			save[LOCALS + 2] = 1 # 0x1, b'\x00\x01'
		else:
			setSpriteGroup(0) # Usually the sprite for UP
			save[LOCALS + 2] = 0 # 0x0, b'\x00\x00'
		
		if save[LOCALS + 0] == 1 and save[LOCALS + 1] == 0 and save[LOCALS + 2] == 1 and save[140] == 0:
			save[140] = 1 # 0x1, b'\x00\x01'
			despawn(actor=cast[3])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: [3]
class enemy_floorSpikes:
	def onLoad_maybe(self):
		if save[140] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 19:
			player.x = 0
			player.y = 114
			setSpriteGroup(1) # Usually the sprite for RIGHT
		else:
			player.x = 274
			player.y = 124
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		save[CELL_SELF + 0] = 29492 # 0x7334, b's4'
		save[CELL_SELF + 1] = 12848 # 0x3230, b'20'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29492 # 0x7334, b's4'
		save[CELL_RIGHT + 1] = 12849 # 0x3231, b'21'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 29492 # 0x7334, b's4'
		save[CELL_LEFT + 1] = 12601 # 0x3139, b'19'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_CELL_ID_maybe] = 20 # 0x14, b'\x00\x14'
		
	def onTouchTrigger(self):
		if save[140] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 0 # 0x0, b'\x00\x00'
local2 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'SWITCH1\x00', b'SWITCH2\x00', b'SWITCH3\x00']],
]
