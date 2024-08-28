# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class env_teleportPixel:
	def onTouchOrPushBlockStoppedMoving(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class env_teleportPixel:
	def onTouchOrPushBlockStoppedMoving(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 3])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 103 # 0x67, b'\x00g'
		save[CELL_SELF + 1] = 13106 # 0x3332, b'32'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 103 # 0x67, b'\x00g'
		save[CELL_UP + 1] = 13105 # 0x3331, b'31'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_ENUM] = 0 # 0x0, b'\x00\x00'
		setLocationOnMap(g31)
		
		if save[INDOOR_ID] == 1:
			player.x = 232
			player.y = 28
			setSpriteGroup(3) # Usually the sprite for LEFT
			save[INDOOR_ID] = 0 # 0x0, b'\x00\x00'
		
		if save[INDOOR_ID] == 2:
			player.x = 256
			player.y = 124
			setSpriteGroup(3) # Usually the sprite for LEFT
			save[INDOOR_ID] = 0 # 0x0, b'\x00\x00'
		
		if save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] == 1:
			save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
			player.x = 70
			player.y = 136
			setSpriteGroup(1) # Usually the sprite for RIGHT
		
	def onTouchTrigger(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
# Local variables
local0 = 29489 # 0x7331, b's1'
local1 = 12337 # 0x3031, b'01'
local2 = 102 # 0x66, b'\x00f'
local3 = 29489 # 0x7331, b's1'
local4 = 12337 # 0x3031, b'01'
local5 = 24934 # 0x6166, b'af'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00', b'TRIGCELL4\x00', b'TRIGCELL5\x00', b'TRIGCELL6\x00']],
]
