# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_llort:
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
		save[CELL_SELF + 1] = 12337 # 0x3031, b'01'
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
		player.y = 148
		setSpriteGroup(0) # Usually the sprite for UP
		save[RESPAWN_ENUM] = 8 # 0x8, b'\x00\x08'
		save[RESPAWN_CELL_ID_maybe] = 1 # 0x1, b'\x00\x01'
		

# Local variables
local0 = 26476 # 0x676c, b'gl'
local1 = 12800 # 0x3200, b'2\x00'
local2 = 102 # 0x66, b'\x00f'

# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]

# Boss AI
def bossAI():
	SetStartPosition(x=132, y=50)
	while True:
		SetAnimationGroup(group=0)
		SetIsInvulnerable(invulnerable=False)
		MoveToGoal(x=28, y=40)
		SetAnimationGroup(group=1)
		SetIsInvulnerable(invulnerable=True)
		AnimateInPlace(frames=2)
		UseAttack()
		PlaySound(index=0)
		AnimateInPlace(frames=4)
		SetAnimationGroup(group=0)
		SetIsInvulnerable(invulnerable=False)
		MoveToGoal(x=8, y=126)
		MoveToGoal(x=246, y=140)
		MoveToGoal(x=18, y=42)
		SetAnimationGroup(group=1)
		SetIsInvulnerable(invulnerable=True)
		AnimateInPlace(frames=2)
		UseAttack()
		PlaySound(index=0)
		AnimateInPlace(frames=4)
		SetAnimationGroup(group=0)
		SetIsInvulnerable(invulnerable=False)
		MoveToGoal(x=0, y=94)
		MoveToGoal(x=240, y=78)
		MoveToGoal(x=78, y=14)
		MoveToGoal(x=174, y=38)
		SetAnimationGroup(group=1)
		SetIsInvulnerable(invulnerable=True)
		AnimateInPlace(frames=2)
		UseAttack()
		PlaySound(index=0)
		AnimateInPlace(frames=4)
		WasteOneFrame() # It takes one frame to reset the loop counter.
