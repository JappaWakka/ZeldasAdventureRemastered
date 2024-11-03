# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_malmord:
	def onDeathOrRaftRideFinished(self):
		save[MALMORD_DEFEATED] = 1 # 0x1, b'\x00\x01'
		despawn(actor=cast[1])
		despawn(actor=cast[2])
		
	def onLoad_maybe(self):
		if save[MALMORD_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
			save[RESPAWN_TO_UNDERWORLD_VERSION] = 1 # 0x1, b'\x00\x01'
			playVoiceLine(source=self, soundId=0)
		
# Actor description 1
# Used for actors: [1]
class env_barrier_s4_left:
	def onLoad_maybe(self):
		if save[MALMORD_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class env_barrier_s4_right:
	def onLoad_maybe(self):
		if save[MALMORD_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 21:
			player.x = 40
			player.y = 44
			setSpriteGroup(1) # Usually the sprite for RIGHT
		else:
			player.x = 264
			player.y = 60
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		save[CELL_SELF + 0] = 29492 # 0x7334, b's4'
		save[CELL_SELF + 1] = 12850 # 0x3232, b'22'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29492 # 0x7334, b's4'
		save[CELL_RIGHT + 1] = 12851 # 0x3233, b'23'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 29492 # 0x7334, b's4'
		save[CELL_LEFT + 1] = 12849 # 0x3231, b'21'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_CELL_ID_maybe] = 22 # 0x16, b'\x00\x16'
		
	def onTouchTrigger(self):
		if save[MALMORD_DEFEATED] == 1:
			returnValue = 1
		else:
			returnValue = 0
		

# No local variables

# Extra script data
extraData = [
	[[]],
]

# Boss AI
def bossAI():
	SetStartPosition(x=232, y=92)
	while True:
		SetAnimationGroup(group=3)
		SetIsInvulnerable(invulnerable=True)
		AnimateInPlace(frames=6)
		SetAnimationGroup(group=4)
		PlaySound(index=0)
		MoveToGoal(x=124, y=132)
		AnimateInPlace(frames=4)
		SetAnimationGroup(group=0)
		SetIsInvulnerable(invulnerable=False)
		MoveToGoal(x=124, y=0)
		SetAnimationGroup(group=4)
		PlaySound(index=0)
		SetIsInvulnerable(invulnerable=True)
		MoveToGoal(x=16, y=24)
		AnimateInPlace(frames=6)
		SetAnimationGroup(group=1)
		SetIsInvulnerable(invulnerable=False)
		MoveToGoal(x=200, y=132)
		SetAnimationGroup(group=4)
		PlaySound(index=0)
		SetIsInvulnerable(invulnerable=True)
		MoveToGoal(x=4, y=80)
		AnimateInPlace(frames=6)
		MoveToGoal(x=130, y=132)
		AnimateInPlace(frames=6)
		MoveToGoal(x=72, y=0)
		SetAnimationGroup(group=2)
		SetIsInvulnerable(invulnerable=False)
		MoveToGoal(x=22, y=132)
		SetAnimationGroup(group=4)
		PlaySound(index=0)
		SetIsInvulnerable(invulnerable=True)
		MoveToGoal(x=188, y=0)
		AnimateInPlace(frames=6)
		MoveToGoal(x=240, y=72)
		SetAnimationGroup(group=3)
		SetIsInvulnerable(invulnerable=False)
		MoveToGoal(x=4, y=56)
		SetAnimationGroup(group=4)
		PlaySound(index=0)
		SetIsInvulnerable(invulnerable=True)
		MoveToGoal(x=244, y=84)
		WasteOneFrame() # It takes one frame to reset the loop counter.
