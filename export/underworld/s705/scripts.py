# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2, 3]
class enemy_lavaLizard:
	def onDeathOrRaftRideFinished(self):
		if save[LOCALS + 0] == 3 and save[Map7] == 0:
			op12_0x2cd0(actor=cast[4])
			save[Map7] = 2 # 0x2, b'\x00\x02'
		else:
			save[LOCALS + 0] += 1
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [4]
class item_map_s7:
	def onTouchOrPushBlockStoppedMoving(self):
		save[Map7] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[Map7] == 2:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 8:
			player.x = 30
			player.y = 72
			setSpriteGroup(1) # Usually the sprite for RIGHT
		
		if save[RESPAWN_CELL_ID_maybe] == 4:
			player.x = 128
			player.y = 168
			setSpriteGroup(0) # Usually the sprite for UP
		
		save[CELL_SELF + 0] = 29495 # 0x7337, b's7'
		save[CELL_SELF + 1] = 12341 # 0x3035, b'05'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 29495 # 0x7337, b's7'
		save[CELL_DOWN + 1] = 12340 # 0x3034, b'04'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 29495 # 0x7337, b's7'
		save[CELL_RIGHT + 1] = 12342 # 0x3036, b'06'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 29495 # 0x7337, b's7'
		save[CELL_LEFT + 1] = 12344 # 0x3038, b'08'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_CELL_ID_maybe] = 5 # 0x5, b'\x00\x05'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'NUMMON\x00\x00']],
]
