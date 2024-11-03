# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_agwanda:
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
		save[CELL_SELF + 1] = 12341 # 0x3035, b'05'
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
		player.y = 36
		setSpriteGroup(2) # Usually the sprite for DOWN
		save[RESPAWN_CELL_ID_maybe] = 5 # 0x5, b'\x00\x05'
		

# Local variables
local0 = 26476 # 0x676c, b'gl'
local1 = 14080 # 0x3700, b'7\x00'
local2 = 102 # 0x66, b'\x00f'

# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]

# Boss AI
def bossAI():
	SetStartPosition(x=208, y=40)
	while True:
		SetAnimationGroup(group=0)
		SetIsInvulnerable(invulnerable=False)
		AnimateInPlace(frames=6)
		MoveToGoal(x=226, y=0)
		MoveToGoal(x=244, y=116)
		SetIsInvulnerable(invulnerable=True)
		UseAttack()
		PlaySound(index=0)
		AnimateInPlace(frames=6)
		SetIsInvulnerable(invulnerable=False)
		UseAttack(unusedHighByte=-122, unusedLowByte=16)
		MoveToGoal(x=106, y=0)
		MoveToGoal(x=4, y=0)
		AnimateInPlace(frames=6)
		MoveToGoal(x=124, y=128)
		SetIsInvulnerable(invulnerable=True)
		UseAttack()
		PlaySound(index=0)
		AnimateInPlace(frames=6)
		SetIsInvulnerable(invulnerable=False)
		MoveToGoal(x=4, y=80)
		MoveToGoal(x=40, y=92)
		MoveToGoal(x=34, y=128)
		MoveToGoal(x=112, y=128)
		MoveToGoal(x=4, y=84)
		AnimateInPlace(frames=6)
		MoveToGoal(x=200, y=128)
		SetIsInvulnerable(invulnerable=True)
		UseAttack()
		PlaySound(index=0)
		AnimateInPlace(frames=6)
		SetIsInvulnerable(invulnerable=False)
		WasteOneFrame() # It takes one frame to reset the loop counter.
