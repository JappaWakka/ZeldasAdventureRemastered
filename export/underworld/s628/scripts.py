# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_ursore:
	def onDeathOrRaftRideFinished(self):
		save[URSORE_DEFEATED] = 1 # 0x1, b'\x00\x01'
		despawn(actor=cast[1])
		despawn(actor=cast[2])
		
	def onLoad_maybe(self):
		if save[URSORE_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
			save[RESPAWN_TO_UNDERWORLD_VERSION] = 1 # 0x1, b'\x00\x01'
			playVoiceLine(source=self, soundId=0)
		
# Actor description 1
# Used for actors: [1]
class env_barrier_s6_right:
	def onLoad_maybe(self):
		if save[URSORE_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class env_barrier_s6_left:
	def onLoad_maybe(self):
		if save[URSORE_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 27:
			player.x = 274
			player.y = 102
			setSpriteGroup(3) # Usually the sprite for LEFT
		else:
			player.x = 32
			player.y = 100
			setSpriteGroup(1) # Usually the sprite for RIGHT
		
		save[CELL_SELF + 0] = 29494 # 0x7336, b's6'
		save[CELL_SELF + 1] = 12856 # 0x3238, b'28'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29494 # 0x7336, b's6'
		save[CELL_RIGHT + 1] = 12855 # 0x3237, b'27'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 29494 # 0x7336, b's6'
		save[CELL_LEFT + 1] = 12857 # 0x3239, b'29'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_CELL_ID_maybe] = 28 # 0x1c, b'\x00\x1c'
		
	def onTouchTrigger(self):
		if save[URSORE_DEFEATED] == 0:
			returnValue = 0
		else:
			returnValue = 1
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
