# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_agwanda:
	def onDeathOrRaftRideFinished(self):
		save[AGWANDA_DEFEATED] = 1 # 0x1, b'\x00\x01'
		despawn(actor=cast[1])
		despawn(actor=cast[2])
		playVoiceLine(source=self, soundId=0)
		
	def onLoad_maybe(self):
		if save[AGWANDA_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
			save[RESPAWN_TO_UNDERWORLD_VERSION] = 1 # 0x1, b'\x00\x01'
		
# Actor description 2
# Used for actors: [1]
class env_barrier_s5_right:
	def onLoad_maybe(self):
		if save[AGWANDA_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: [2]
class env_barrier_s5_left:
	def onLoad_maybe(self):
		if save[AGWANDA_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 24:
			player.x = 44
			player.y = 114
			setSpriteGroup(1) # Usually the sprite for RIGHT
		else:
			player.x = 246
			player.y = 122
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		save[CELL_SELF + 0] = 29493 # 0x7335, b's5'
		save[CELL_SELF + 1] = 12853 # 0x3235, b'25'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29493 # 0x7335, b's5'
		save[CELL_RIGHT + 1] = 12854 # 0x3236, b'26'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 29493 # 0x7335, b's5'
		save[CELL_LEFT + 1] = 12852 # 0x3234, b'24'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 25 # 0x19, b'\x00\x19'
		
	def onTouchTrigger(self):
		if save[AGWANDA_DEFEATED] == 1:
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
	SetStartPosition(x=208, y=40)
	while True:
		SetAnimationGroup(group=0)
		SetIsInvulnerable(invulnerable=True)
		AnimateInPlace(frames=6)
		MoveToGoal(x=166, y=76)
		SetIsInvulnerable(invulnerable=True)
		PlaySound(index=0)
		UseAttack()
		AnimateInPlace(frames=6)
		SetIsInvulnerable(invulnerable=False)
		MoveToGoal(x=76, y=40)
		AnimateInPlace(frames=6)
		MoveToGoal(x=124, y=128)
		SetIsInvulnerable(invulnerable=True)
		PlaySound(index=0)
		UseAttack()
		AnimateInPlace(frames=6)
		SetIsInvulnerable(invulnerable=False)
		MoveToGoal(x=124, y=40)
		AnimateInPlace(frames=6)
		MoveToGoal(x=200, y=128)
		SetIsInvulnerable(invulnerable=True)
		PlaySound(index=0)
		UseAttack()
		AnimateInPlace(frames=6)
		SetIsInvulnerable(invulnerable=False)
		MoveToGoal(x=58, y=104)
		AnimateInPlace(frames=6)
		MoveToGoal(x=130, y=68)
		SetIsInvulnerable(invulnerable=True)
		PlaySound(index=0)
		UseAttack()
		AnimateInPlace(frames=6)
		SetIsInvulnerable(invulnerable=False)
		MoveToGoal(x=58, y=68)
		AnimateInPlace(frames=6)
		MoveToGoal(x=178, y=44)
		AnimateInPlace(frames=6)
		WasteOneFrame() # It takes one frame to reset the loop counter.
