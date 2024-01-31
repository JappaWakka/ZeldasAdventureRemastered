# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_unknownActor166:
	def onTouch(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
	def onLoad_maybe(self):
		if save[SIGN_S3] == 1 and save[RESPAWN_ENUM] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_ENUM] == 3:
			player.x = 234
			player.y = 144
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 1:
			save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
			player.x = 226
			player.y = 136
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 122 # 0x7a, b'\x00z'
		save[CELL_SELF + 1] = 13568 # 0x3500, b'5\x00'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 122 # 0x7a, b'\x00z'
		save[CELL_UP + 1] = 13312 # 0x3400, b'4\x00'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 122 # 0x7a, b'\x00z'
		save[CELL_DOWN + 1] = 13824 # 0x3600, b'6\x00'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 29491 # 0x7333, b's3'
		save[CELL_RIGHT + 1] = 12337 # 0x3031, b'01'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 121 # 0x79, b'\x00y'
		save[CELL_LEFT + 1] = 13568 # 0x3500, b'5\x00'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_ENUM] = 0 # 0x0, b'\x00\x00'
		setLocationOnMap(z4)
		
# Local variables
local0 = 29491 # 0x7333, b's3'
local1 = 12337 # 0x3031, b'01'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
