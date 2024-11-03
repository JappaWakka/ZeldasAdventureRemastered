# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_warbane:
	def onDeathOrRaftRideFinished(self):
		save[WARBANE_DEFEATED] = 1 # 0x1, b'\x00\x01'
		despawn(actor=cast[1])
		despawn(actor=cast[2])
		
	def onLoad_maybe(self):
		if save[WARBANE_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
			save[RESPAWN_TO_UNDERWORLD_VERSION] = 1 # 0x1, b'\x00\x01'
			playVoiceLine(source=self, soundId=0)
		
# Actor description 1
# Used for actors: [1]
class env_barrier_s7_top:
	def onLoad_maybe(self):
		if save[WARBANE_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class env_barrier_s7_right:
	def onLoad_maybe(self):
		if save[WARBANE_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 22:
			player.x = 274
			player.y = 88
			setSpriteGroup(3) # Usually the sprite for LEFT
		else:
			player.x = 146
			player.y = 8
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 29495 # 0x7337, b's7'
		save[CELL_SELF + 1] = 12851 # 0x3233, b'23'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29495 # 0x7337, b's7'
		save[CELL_UP + 1] = 12852 # 0x3234, b'24'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29495 # 0x7337, b's7'
		save[CELL_RIGHT + 1] = 12850 # 0x3232, b'22'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 23 # 0x17, b'\x00\x17'
		
	def onTouchTrigger(self):
		if save[WARBANE_DEFEATED] == 0:
			returnValue = 0
		else:
			returnValue = 1
		

# No local variables

# Extra script data
extraData = [
	[[]],
]

# Boss AI
def bossAI():
	SetStartPosition(x=208, y=40)
	while True:
		MoveToGoal(x=80, y=32)
		PlaySound(index=0)
		MoveToGoal(x=116, y=14)
		MoveToGoal(x=240, y=68)
		MoveToGoal(x=48, y=24)
		PlaySound(index=0)
		MoveToGoal(x=226, y=126)
		MoveToGoal(x=58, y=112)
		MoveToGoal(x=58, y=112)
		PlaySound(index=0)
		MoveToGoal(x=44, y=64)
		MoveToGoal(x=198, y=130)
		WasteOneFrame() # It takes one frame to reset the loop counter.
