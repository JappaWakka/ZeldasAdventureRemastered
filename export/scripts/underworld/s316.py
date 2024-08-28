# This is not real python, but approxiamates it.

# Actor description 1
# Used for actors: [3]
class env_block_blue:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 1] == 0:
			spawnAndAnimate(actor=cast[0])
			spawnAndAnimate(actor=cast[1])
			spawnAndAnimate(actor=cast[2])
			save[LOCALS + 1] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [4]
class env_block_blue:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 0] == 0 and save[LOCALS + 2] == 0:
			despawn(actor=cast[5])
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: [5]
class enemy_floorSpikes_blue:
	def onLoad_maybe(self):
		if save[RESPAWN_CELL_ID_maybe] == 17:
			nop
			save[LOCALS + 2] = 1 # 0x1, b'\x00\x01'
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		else:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 15:
			player.x = 292
			player.y = 92
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		if save[RESPAWN_CELL_ID_maybe] == 17:
			player.x = 208
			player.y = 56
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 29491 # 0x7333, b's3'
		save[CELL_SELF + 1] = 12598 # 0x3136, b'16'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29491 # 0x7333, b's3'
		save[CELL_UP + 1] = 12599 # 0x3137, b'17'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 29491 # 0x7333, b's3'
		save[CELL_DOWN + 1] = 12596 # 0x3134, b'14'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 29491 # 0x7333, b's3'
		save[CELL_RIGHT + 1] = 12597 # 0x3135, b'15'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 16 # 0x10, b'\x00\x10'
		enableIcePhysics()
		
	def onTouchTrigger(self):
		if save[LOCALS + 0] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 0 # 0x0, b'\x00\x00'
local2 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'SPIKEDOWN\x00', b'VALTASLIVE\x00\x00', b'DISABLEBLOCK\x00\x00']],
]
