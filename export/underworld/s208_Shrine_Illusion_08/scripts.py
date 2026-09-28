# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2, 3, 4, 5, 6]
class env_bridge_movingRock:
	def onTouchOrPushBlockStoppedMoving(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 7:
			player.x = 6
			player.y = 96
			setSpriteGroup(1) # Usually the sprite for RIGHT
		else:
			player.x = 234
			player.y = 12
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 29490 # 0x7332, b's2'
		save[CELL_SELF + 1] = 12344 # 0x3038, b'08'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29490 # 0x7332, b's2'
		save[CELL_UP + 1] = 12345 # 0x3039, b'09'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29490 # 0x7332, b's2'
		save[CELL_LEFT + 1] = 12343 # 0x3037, b'07'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_CELL_ID_maybe] = 8 # 0x8, b'\x00\x08'
		
# Local variables
local0 = 29490 # 0x7332, b's2'
local1 = 12337 # 0x3031, b'01'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
