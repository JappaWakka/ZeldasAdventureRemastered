# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_zeldaSliding:
	def onDeathOrRaftRideFinished(self):
		spawnAndAnimate(actor=cast[1])
		spawnAndAnimate(actor=cast[2])
		spawnAndAnimate(actor=cast[3])
		player.visible_maybe = True
		allowPlayerInputs = True
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 1:
			player.x = 226
			player.y = 106
			setSpriteGroup(2) # Usually the sprite for DOWN
			player.visible_maybe = False
			allowPlayerInputs = False
			spawnAndAnimate(actor=cast[0])
		else:
			save[RESPAWN_CELL_ID_maybe] = 2 # 0x2, b'\x00\x02'
			player.x = 78
			player.y = 0
			setSpriteGroup(2) # Usually the sprite for DOWN
			spawnAndAnimate(actor=cast[1])
			spawnAndAnimate(actor=cast[2])
			spawnAndAnimate(actor=cast[3])
		
		save[CELL_SELF + 0] = 29490 # 0x7332, b's2'
		save[CELL_SELF + 1] = 12338 # 0x3032, b'02'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29490 # 0x7332, b's2'
		save[CELL_UP + 1] = 12339 # 0x3033, b'03'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 2 # 0x2, b'\x00\x02'
		
# Local variables
local0 = 29490 # 0x7332, b's2'
local1 = 12339 # 0x3033, b'03'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
