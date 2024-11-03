# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_pasquinade:
	def onDeathOrRaftRideFinished(self):
		spawnAndAnimate(actor=cast[1])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [1]
class enemy_ganonFairy:
	def onDeathOrRaftRideFinished(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 26476 # 0x676c, b'gl'
		save[CELL_SELF + 1] = 12338 # 0x3032, b'02'
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
		player.x = 154
		player.y = 156
		setSpriteGroup(0) # Usually the sprite for UP
		save[RESPAWN_CELL_ID_maybe] = 2 # 0x2, b'\x00\x02'
		

# Local variables
local0 = 26476 # 0x676c, b'gl'
local1 = 13056 # 0x3300, b'3\x00'
local2 = 102 # 0x66, b'\x00f'

# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]

# Boss AI
def bossAI():
	SetStartPosition(x=96, y=36)
	while True:
		SetAnimationGroup(group=0)
		AnimateInPlace(frames=4)
		SetAnimationGroup(group=1)
		MoveToGoal(x=0, y=112)
		SetAnimationGroup(group=2)
		MoveToGoal(x=220, y=102)
		SetAnimationGroup(group=1)
		MoveToGoal(x=4, y=64)
		MoveToGoal(x=220, y=4)
		MoveToGoal(x=100, y=58)
		SetIsInvulnerable(invulnerable=True)
		SetAnimationGroup(group=0)
		AnimateInPlace(frames=2)
		SetAnimationGroup(group=1)
		UseAttack()
		PlaySound(index=0)
		SetIsInvulnerable(invulnerable=False)
		AnimateInPlace(frames=4)
		SetAnimationGroup(group=1)
		MoveToGoal(x=46, y=114)
		MoveToGoal(x=124, y=26)
		MoveToGoal(x=22, y=66)
		SetIsInvulnerable(invulnerable=True)
		SetAnimationGroup(group=0)
		AnimateInPlace(frames=2)
		SetAnimationGroup(group=1)
		UseAttack()
		PlaySound(index=0)
		SetIsInvulnerable(invulnerable=False)
		AnimateInPlace(frames=4)
		SetAnimationGroup(group=1)
		MoveToGoal(x=106, y=114)
		MoveToGoal(x=4, y=26)
		MoveToGoal(x=166, y=66)
		SetIsInvulnerable(invulnerable=True)
		SetAnimationGroup(group=0)
		AnimateInPlace(frames=2)
		SetAnimationGroup(group=1)
		UseAttack()
		PlaySound(index=0)
		SetIsInvulnerable(invulnerable=False)
		AnimateInPlace(frames=4)
		WasteOneFrame() # It takes one frame to reset the loop counter.
