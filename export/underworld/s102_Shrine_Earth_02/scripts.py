# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class env_bridge_ladder:
	def onItemInteractOrSoundFileDone(self):
		if save[HAS_LADDER_BEEN_USED] == 0 and save[LOCALS + 0] == 0:
			spawnAndAnimate(actor=self)
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
			save[HAS_LADDER_BEEN_USED] = 1 # 0x1, b'\x00\x01'
			save[Ladder] = 0 # 0x0, b'\x00\x00'
		
	def onLoad_maybe(self):
		if save[HAS_LADDER_BEEN_USED] == 1:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29489 # 0x7331, b's1'
		save[CELL_SELF + 1] = 12338 # 0x3032, b'02'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29489 # 0x7331, b's1'
		save[CELL_RIGHT + 1] = 12339 # 0x3033, b'03'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 29489 # 0x7331, b's1'
		save[CELL_LEFT + 1] = 12337 # 0x3031, b'01'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 2 # 0x2, b'\x00\x02'
		
		if save[LLORT_DEFEATED] == 0:
			playVoiceLine(source=self, soundId=0)
		
	def onTouchTrigger(self):
		if save[HAS_LADDER_BEEN_USED] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'PLACED\x00\x00']],
]
