# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_llort:
	def onDeathOrRaftRideFinished(self):
		save[LLORT_DEFEATED] = 1 # 0x1, b'\x00\x01'
		despawn(actor=cast[1])
		despawn(actor=cast[2])
		rupees += 250
		
	def onLoad_maybe(self):
		if save[LLORT_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
			save[RESPAWN_TO_UNDERWORLD_VERSION] = 1 # 0x1, b'\x00\x01'
			playVoiceLine(source=self, soundId=0)
		
# Actor description 2
# Used for actors: [1]
class env_ironBars_top:
	def onLoad_maybe(self):
		if save[LLORT_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: [2]
class env_ironBars_bottom:
	def onLoad_maybe(self):
		if save[LLORT_DEFEATED] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 22:
			player.x = 154
			player.y = 32
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 29489 # 0x7331, b's1'
		save[CELL_SELF + 1] = 12849 # 0x3231, b'21'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29489 # 0x7331, b's1'
		save[CELL_UP + 1] = 12850 # 0x3232, b'22'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 29489 # 0x7331, b's1'
		save[CELL_DOWN + 1] = 12848 # 0x3230, b'20'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 21 # 0x15, b'\x00\x15'
		
	def onTouchTrigger(self):
		if save[LLORT_DEFEATED] == 0:
			returnValue = 0
		else:
			returnValue = 1
		
# Local variables
local0 = 29489 # 0x7331, b's1'
local1 = 12850 # 0x3232, b'22'
local2 = 102 # 0x66, b'\x00f'
local3 = 29489 # 0x7331, b's1'
local4 = 12848 # 0x3230, b'20'
local5 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00', b'TRIGCELL4\x00', b'TRIGCELL5\x00', b'TRIGCELL6\x00']],
]
