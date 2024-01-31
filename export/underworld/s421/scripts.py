# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2, 3]
class enemy_romraven:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [4]
class env_switch:
	def onHitOrIteractIntercept(self):
		if save[LOCALS + 0] == 0:
			setSpriteGroup(1) # Usually the sprite for RIGHT
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		else:
			setSpriteGroup(0) # Usually the sprite for UP
			save[LOCALS + 0] = 0 # 0x0, b'\x00\x00'
		
		if save[LOCALS + 0] == 1 and save[141] == 0:
			despawn(actor=cast[7])
			spawnAndAnimate(actor=cast[5])
			spawnAndAnimate(actor=cast[6])
			save[141] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [5, 6]
class enemy_jack:
	def onLoad_maybe(self):
		if save[141] == 1:
			spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: [7]
class enemy_floorSpikes_white:
	def onLoad_maybe(self):
		if save[141] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 20:
			player.x = 22
			player.y = 116
			setSpriteGroup(1) # Usually the sprite for RIGHT
		else:
			player.x = 274
			player.y = 116
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 1:
			save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
			player.x = 142
			player.y = 112
			setSpriteGroup(1) # Usually the sprite for RIGHT
		
		save[CELL_SELF + 0] = 29492 # 0x7334, b's4'
		save[CELL_SELF + 1] = 12849 # 0x3231, b'21'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29492 # 0x7334, b's4'
		save[CELL_RIGHT + 1] = 12850 # 0x3232, b'22'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 29492 # 0x7334, b's4'
		save[CELL_LEFT + 1] = 12848 # 0x3230, b'20'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 21 # 0x15, b'\x00\x15'
		save[RESPAWN_TO_UNDERWORLD_VERSION] = 0 # 0x0, b'\x00\x00'
		
		if save[MALMORD_DEFEATED] == 0:
			playVoiceLine(source=self, soundId=0)
		
	def onTouchTrigger(self):
		if save[141] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'SWITCH\x00\x00']],
]
