# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2, 3]
class enemy_patra:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [4]
class item_treasure_blackOrb:
	def onItemInteractOrSoundFileDone(self):
		if save[HAS_BLACK_ORB_BEEN_USED] == 0:
			save[HAS_BLACK_ORB_BEEN_USED] = 1 # 0x1, b'\x00\x01'
			spawnAndAnimate(actor=self)
			despawn(actor=cast[5])
			save[BlackOrb] = 0 # 0x0, b'\x00\x00'
		
	def onLoad_maybe(self):
		if save[HAS_BLACK_ORB_BEEN_USED] == 1:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [5]
class env_barrier_s2_right:
	def onLoad_maybe(self):
		if save[HAS_BLACK_ORB_BEEN_USED] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 12:
			player.x = 164
			player.y = 168
			setSpriteGroup(0) # Usually the sprite for UP
		else:
			player.x = 18
			player.y = 92
			setSpriteGroup(1) # Usually the sprite for RIGHT
		
		if save[RESPAWN_CELL_ID_maybe] == 15:
			player.x = 278
			player.y = 92
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 1:
			save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
			player.x = 164
			player.y = 152
			setSpriteGroup(0) # Usually the sprite for UP
		
		save[CELL_SELF + 0] = 29490 # 0x7332, b's2'
		save[CELL_SELF + 1] = 12596 # 0x3134, b'14'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 29490 # 0x7332, b's2'
		save[CELL_DOWN + 1] = 12594 # 0x3132, b'12'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 29490 # 0x7332, b's2'
		save[CELL_RIGHT + 1] = 12597 # 0x3135, b'15'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 14 # 0xe, b'\x00\x0e'
		
	def onTouchTrigger(self):
		if save[HAS_BLACK_ORB_BEEN_USED] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'ORBDONE\x00']],
]
