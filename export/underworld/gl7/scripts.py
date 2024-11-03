# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_warbane:
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
		save[CELL_SELF + 1] = 12343 # 0x3037, b'07'
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
		player.x = 130
		player.y = 120
		setSpriteGroup(0) # Usually the sprite for UP
		save[RESPAWN_CELL_ID_maybe] = 7 # 0x7, b'\x00\x07'
		

# Local variables
local0 = 26476 # 0x676c, b'gl'
local1 = 14336 # 0x3800, b'8\x00'
local2 = 102 # 0x66, b'\x00f'

# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]

# Boss AI
def bossAI():
	SetStartPosition(x=208, y=40)
	while True:
		MoveToGoal(x=4, y=4)
		MoveToGoal(x=56, y=62)
		MoveToGoal(x=92, y=2)
		MoveToGoal(x=146, y=86)
		MoveToGoal(x=200, y=2)
		MoveToGoal(x=2, y=146)
		MoveToGoal(x=242, y=2)
		MoveToGoal(x=188, y=2)
		UseAttack()
		MoveToGoal(x=2, y=2)
		MoveToGoal(x=242, y=146)
		MoveToGoal(x=56, y=2)
		UseAttack()
		WasteOneFrame() # It takes one frame to reset the loop counter.
