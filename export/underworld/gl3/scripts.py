# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_aviana:
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
		save[CELL_SELF + 1] = 12339 # 0x3033, b'03'
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
		save[RESPAWN_CELL_ID_maybe] = 3 # 0x3, b'\x00\x03'
		

# Local variables
local0 = 26476 # 0x676c, b'gl'
local1 = 13312 # 0x3400, b'4\x00'
local2 = 102 # 0x66, b'\x00f'

# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]

# Boss AI
def bossAI():
	SetStartPosition(x=112, y=4)
	while True:
		SetAnimationGroup(group=0)
		SetIsInvulnerable(invulnerable=False)
		MoveToGoal(x=4, y=126)
		MoveToGoal(x=230, y=90)
		MoveToGoal(x=158, y=2)
		MoveToGoal(x=110, y=14)
		SetIsInvulnerable(invulnerable=True)
		UseAttack()
		SetIsInvulnerable(invulnerable=False)
		MoveToGoal(x=38, y=14)
		MoveToGoal(x=2, y=58)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		MoveToGoal(x=20, y=122)
		SetAnimationGroup(group=0)
		PlaySound(index=0)
		MoveToGoal(x=56, y=74)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		MoveToGoal(x=92, y=126)
		SetAnimationGroup(group=0)
		PlaySound(index=0)
		MoveToGoal(x=146, y=78)
		SetAnimationGroup(group=1)
		PlaySound(index=0)
		MoveToGoal(x=230, y=138)
		WasteOneFrame() # It takes one frame to reset the loop counter.
