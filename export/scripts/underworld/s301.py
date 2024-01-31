# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class npc_unknownActor166:
	def onDeathOrRaftRideFinished(self):
		if save[LOCALS + 3] == 1:
			allowPlayerInputs = True
		
	def onTouch(self):
		if save[LOCALS + 3] == 0:
			teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
	def onLoad_maybe(self):
		if save[RESPAWN_ENUM] == 0:
			allowPlayerInputs = False
			spawnAndAnimate(actor=cast[0])
			save[LOCALS + 3] = 1 # 0x1, b'\x00\x01'
		else:
			spawnAndAnimate(actor=cast[1])
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_ENUM] == 0:
			player.x = 146
			player.y = 88
			setSpriteGroup(2) # Usually the sprite for DOWN
		else:
			player.x = 140
			player.y = 28
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 29491 # 0x7333, b's3'
		save[CELL_SELF + 1] = 12338 # 0x3032, b'02'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29491 # 0x7333, b's3'
		save[CELL_UP + 1] = 12338 # 0x3032, b'02'
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
		save[RESPAWN_CELL_ID_maybe] = 1 # 0x1, b'\x00\x01'
		save[RESPAWN_ENUM] = 3 # 0x3, b'\x00\x03'
		save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
		
# Local variables
local0 = 122 # 0x7a, b'\x00z'
local1 = 13568 # 0x3500, b'5\x00'
local2 = 102 # 0x66, b'\x00f'
local3 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00', b'BIRD\x00\x00']],
]
