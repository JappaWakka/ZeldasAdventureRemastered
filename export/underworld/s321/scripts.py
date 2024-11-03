# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_aviana:
	def onDeathOrRaftRideFinished(self):
		save[AVIANA_DEFEATED] = 1 # 0x1, b'\x00\x01'
		despawn(actor=cast[1])
		despawn(actor=cast[2])
		
	def onLoad_maybe(self):
		if save[AVIANA_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [1]
class env_barrier_s3_top:
	def onLoad_maybe(self):
		if save[AVIANA_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: [2]
class env_barrier_s3_bottom:
	def onLoad_maybe(self):
		if save[AVIANA_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 22:
			player.x = 154
			player.y = 4
			setSpriteGroup(2) # Usually the sprite for DOWN
		else:
			player.x = 142
			player.y = 150
			setSpriteGroup(0) # Usually the sprite for UP
		
		save[CELL_SELF + 0] = 29491 # 0x7333, b's3'
		save[CELL_SELF + 1] = 12849 # 0x3231, b'21'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29491 # 0x7333, b's3'
		save[CELL_UP + 1] = 12850 # 0x3232, b'22'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 29491 # 0x7333, b's3'
		save[CELL_DOWN + 1] = 12848 # 0x3230, b'20'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 21 # 0x15, b'\x00\x15'
		save[RESPAWN_TO_UNDERWORLD_VERSION] = 1 # 0x1, b'\x00\x01'
		
		if save[Rug] == 0:
			enableIcePhysics()
		
	def onTouchTrigger(self):
		if save[AVIANA_DEFEATED] == 0:
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
	SetStartPosition(x=112, y=4)
	while True:
		SetAnimationGroup(group=0)
		SetIsInvulnerable(invulnerable=False)
		MoveToGoal(x=4, y=4)
		MoveToGoal(x=112, y=52)
		MoveToGoal(x=224, y=4)
		MoveToGoal(x=128, y=40)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		MoveToGoal(x=4, y=112)
		MoveToGoal(x=68, y=64)
		SetAnimationGroup(group=0)
		PlaySound(index=0)
		MoveToGoal(x=68, y=64)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		MoveToGoal(x=120, y=112)
		SetAnimationGroup(group=0)
		PlaySound(index=0)
		MoveToGoal(x=148, y=60)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		MoveToGoal(x=224, y=116)
		SetAnimationGroup(group=0)
		PlaySound(index=0)
		MoveToGoal(x=104, y=48)
		SetIsInvulnerable(invulnerable=True)
		PlaySound(index=0)
		UseAttack()
		SetIsInvulnerable(invulnerable=False)
		MoveToGoal(x=28, y=4)
		MoveToGoal(x=116, y=56)
		StepNormalAI_extremelyComplicated(frames=4, unusualHighByte=2) # unusualHighByte: The code only checks for zero or nonzero. This script considers anything that isn't 0 or 1 (i.e. true or false) to be "unusual".
		MoveToGoal(x=188, y=4)
		MoveToGoal(x=40, y=108)
		MoveToGoal(x=20, y=4)
		MoveToGoal(x=212, y=100)
		WasteOneFrame() # It takes one frame to reset the loop counter.
