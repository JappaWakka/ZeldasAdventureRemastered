# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1]
class env_pit:
	def onDeathOrRaftRideFinished(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
	def onPurchaseOrAnimationComplete(self):
		spawnAndAnimate(actor=cast[1])
		
class Cell:
	def onEntry(self):
		player.x = 144
		player.y = 168
		setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 29490 # 0x7332, b's2'
		save[CELL_SELF + 1] = 12337 # 0x3031, b'01'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 108 # 0x6c, b'\x00l'
		save[CELL_DOWN + 1] = 14336 # 0x3800, b'8\x00'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 1 # 0x1, b'\x00\x01'
		save[RESPAWN_ENUM] = 2 # 0x2, b'\x00\x02'
		save[INDOOR_ID] = 1 # 0x1, b'\x00\x01'
		playVoiceLine(source=self, soundId=0)
		save[ENTERED_BY_RESPAWN_HARP_OR_COMPASS] = 0 # 0x0, b'\x00\x00'
		
	def onTouchTrigger(self):
		spawnAndAnimate(actor=cast[0])
		allowPlayerInputs = False
		
# Local variables
local0 = 29490 # 0x7332, b's2'
local1 = 12338 # 0x3032, b'02'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
