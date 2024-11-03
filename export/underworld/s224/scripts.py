# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_pasquinade:
	def onDeathOrRaftRideFinished(self):
		save[PASQUINADE_DEFEATED] = 1 # 0x1, b'\x00\x01'
		despawn(actor=cast[1])
		despawn(actor=cast[2])
		
	def onLoad_maybe(self):
		if save[PASQUINADE_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=0)
		
# Actor description 2
# Used for actors: [1]
class env_barrier_s2_top:
	def onLoad_maybe(self):
		if save[PASQUINADE_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: [2]
class env_barrier_s2_bottom:
	def onLoad_maybe(self):
		if save[PASQUINADE_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 23:
			player.x = 122
			player.y = 152
			setSpriteGroup(0) # Usually the sprite for UP
		else:
			player.x = 76
			player.y = 36
			setSpriteGroup(0) # Usually the sprite for UP
		
		save[CELL_SELF + 0] = 29490 # 0x7332, b's2'
		save[CELL_SELF + 1] = 12852 # 0x3234, b'24'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29490 # 0x7332, b's2'
		save[CELL_UP + 1] = 12853 # 0x3235, b'25'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 29490 # 0x7332, b's2'
		save[CELL_DOWN + 1] = 12851 # 0x3233, b'23'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_TO_UNDERWORLD_VERSION] = 1 # 0x1, b'\x00\x01'
		save[RESPAWN_CELL_ID_maybe] = 24 # 0x18, b'\x00\x18'
		
	def onTouchTrigger(self):
		if save[PASQUINADE_DEFEATED] == 0:
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
	SetStartPosition(x=96, y=36)
	while True:
		SetAnimationGroup(group=0)
		AnimateInPlace(frames=4)
		SetAnimationGroup(group=1)
		MoveToGoal(x=0, y=32)
		SetAnimationGroup(group=0)
		AnimateInPlace(frames=4)
		SetAnimationGroup(group=2)
		MoveToGoal(x=180, y=72)
		SetAnimationGroup(group=0)
		AnimateInPlace(frames=4)
		SetAnimationGroup(group=1)
		MoveToGoal(x=100, y=64)
		SetIsInvulnerable(invulnerable=True)
		SetAnimationGroup(group=0)
		AnimateInPlace(frames=2)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		UseAttack()
		SetIsInvulnerable(invulnerable=False)
		AnimateInPlace(frames=4)
		SetAnimationGroup(group=1)
		MoveToGoal(x=0, y=12)
		SetAnimationGroup(group=0)
		AnimateInPlace(frames=4)
		SetAnimationGroup(group=1)
		MoveToGoal(x=100, y=64)
		SetIsInvulnerable(invulnerable=True)
		SetAnimationGroup(group=0)
		AnimateInPlace(frames=2)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		UseAttack()
		SetIsInvulnerable(invulnerable=False)
		AnimateInPlace(frames=4)
		SetAnimationGroup(group=1)
		MoveToGoal(x=212, y=92)
		SetAnimationGroup(group=0)
		AnimateInPlace(frames=4)
		SetAnimationGroup(group=1)
		MoveToGoal(x=100, y=64)
		SetIsInvulnerable(invulnerable=True)
		SetAnimationGroup(group=0)
		AnimateInPlace(frames=2)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		UseAttack()
		SetIsInvulnerable(invulnerable=False)
		AnimateInPlace(frames=4)
		SetAnimationGroup(group=1)
		MoveToGoal(x=200, y=12)
		SetAnimationGroup(group=0)
		AnimateInPlace(frames=4)
		SetAnimationGroup(group=1)
		MoveToGoal(x=100, y=64)
		SetIsInvulnerable(invulnerable=True)
		SetAnimationGroup(group=0)
		AnimateInPlace(frames=2)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		UseAttack()
		SetIsInvulnerable(invulnerable=False)
		AnimateInPlace(frames=4)
		SetAnimationGroup(group=1)
		MoveToGoal(x=0, y=92)
		WasteOneFrame() # It takes one frame to reset the loop counter.
