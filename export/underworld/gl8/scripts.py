# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_ganon:
	def onDeathOrRaftRideFinished(self):
		exitShrineAndPlayMovie(shrine=8)
		
# Actor description 2
# Used for actors: [1]
class enemy_ganonFairy:
	def onDeathOrRaftRideFinished(self):
		spawnAndAnimate(actor=cast[0])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 26476 # 0x676c, b'gl'
		save[CELL_SELF + 1] = 12344 # 0x3038, b'08'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		player.x = 148
		player.y = 144
		setSpriteGroup(0) # Usually the sprite for UP
		save[RESPAWN_CELL_ID_maybe] = 8 # 0x8, b'\x00\x08'
		

# No local variables

# Extra script data
extraData = [
	[[]],
]

# Boss AI
def bossAI():
	SetStartPosition(x=122, y=0)
	while True:
		SetIsInvulnerable(invulnerable=True)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		AnimateInPlace(frames=8)
		SetAnimationGroup(group=0)
		SetIsInvulnerable(invulnerable=False)
		AnimateInPlace(frames=8)
		UseAttack()
		PlaySound(index=1)
		AnimateInPlace(frames=7)
		SetIsInvulnerable(invulnerable=True)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		AnimateInPlace(frames=8)
		SetAnimationGroup(group=2)
		MoveToGoal(x=62, y=24)
		AnimateInPlace(frames=26)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		AnimateInPlace(frames=8)
		SetAnimationGroup(group=0)
		SetIsInvulnerable(invulnerable=False)
		AnimateInPlace(frames=8)
		UseAttack()
		PlaySound(index=1)
		AnimateInPlace(frames=7)
		SetIsInvulnerable(invulnerable=True)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		AnimateInPlace(frames=8)
		SetAnimationGroup(group=2)
		MoveToGoal(x=212, y=16)
		AnimateInPlace(frames=26)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		AnimateInPlace(frames=8)
		SetAnimationGroup(group=0)
		SetIsInvulnerable(invulnerable=False)
		AnimateInPlace(frames=8)
		UseAttack()
		PlaySound(index=1)
		AnimateInPlace(frames=7)
		SetIsInvulnerable(invulnerable=True)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		AnimateInPlace(frames=8)
		SetAnimationGroup(group=2)
		MoveToGoal(x=128, y=52)
		AnimateInPlace(frames=26)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		AnimateInPlace(frames=8)
		SetAnimationGroup(group=0)
		SetIsInvulnerable(invulnerable=False)
		AnimateInPlace(frames=8)
		UseAttack()
		PlaySound(index=1)
		AnimateInPlace(frames=7)
		SetIsInvulnerable(invulnerable=True)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		AnimateInPlace(frames=8)
		SetAnimationGroup(group=2)
		MoveToGoal(x=200, y=80)
		AnimateInPlace(frames=26)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		AnimateInPlace(frames=8)
		SetAnimationGroup(group=0)
		SetIsInvulnerable(invulnerable=False)
		AnimateInPlace(frames=8)
		UseAttack()
		PlaySound(index=1)
		AnimateInPlace(frames=7)
		SetIsInvulnerable(invulnerable=True)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		AnimateInPlace(frames=8)
		SetAnimationGroup(group=2)
		MoveToGoal(x=104, y=24)
		AnimateInPlace(frames=26)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		AnimateInPlace(frames=8)
		SetAnimationGroup(group=0)
		SetIsInvulnerable(invulnerable=False)
		AnimateInPlace(frames=8)
		UseAttack()
		PlaySound(index=1)
		AnimateInPlace(frames=7)
		SetIsInvulnerable(invulnerable=True)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		AnimateInPlace(frames=8)
		SetAnimationGroup(group=2)
		MoveToGoal(x=104, y=24)
		AnimateInPlace(frames=26)
		WasteOneFrame() # It takes one frame to reset the loop counter.
