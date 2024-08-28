# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class enemy_wizzrobe:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 15:
			player.x = 0
			player.y = 138
			setSpriteGroup(1) # Usually the sprite for RIGHT
		
		save[CELL_SELF + 0] = 29492 # 0x7334, b's4'
		save[CELL_SELF + 1] = 12598 # 0x3136, b'16'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29492 # 0x7334, b's4'
		save[CELL_UP + 1] = 12599 # 0x3137, b'17'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29492 # 0x7334, b's4'
		save[CELL_RIGHT + 1] = 12601 # 0x3139, b'19'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 29492 # 0x7334, b's4'
		save[CELL_LEFT + 1] = 12597 # 0x3135, b'15'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_CELL_ID_maybe] = 16 # 0x10, b'\x00\x10'
		enableIcePhysics()
		
	def onTouchTrigger(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
# Local variables
local0 = 29492 # 0x7334, b's4'
local1 = 12337 # 0x3031, b'01'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
