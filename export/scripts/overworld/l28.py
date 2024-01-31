# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_sailor:
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 0] == 3 and save[LOCALS + 1] == 0 and save[RUPEE_COUNT] > 19:
			save[LOCALS + 1] = 1 # 0x1, b'\x00\x01'
			rupees -= 20
		
	def onLoad_maybe(self):
		if save[SIGN_S5] == 1:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=0)
		
# Actor description 1
# Used for actors: [1]
class npc_sailor2:
	def onLoad_maybe(self):
		if save[SIGN_S5] == 1:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2, 3, 4]
class env_raft:
	def onDeathOrRaftRideFinished(self):
		if save[LOCALS + 0] == 3:
			teleportPlayerTo(cellName=(char*) &save[LOCALS + 2])
			save[RAFT_JOURNEY_STATE] = 1 # 0x1, b'\x00\x01'
			save[LOCALS + 0] = 3 # 0x3, b'\x00\x03'
		
		if save[LOCALS + 0] == 2:
			save[LOCALS + 0] = 3 # 0x3, b'\x00\x03'
		
		if save[LOCALS + 0] == 1:
			save[LOCALS + 0] = 2 # 0x2, b'\x00\x02'
		
	def onPurchaseOrAnimationComplete(self):
		if save[LOCALS + 0] == 2:
			spawnAndAnimate(actor=cast[4])
		
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 0] == 0 and save[SIGN_S5] == 1:
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
			spawnAndAnimate(actor=cast[3])
			despawn(actor=cast[2])
		
	def onLoad_maybe(self):
		if save[SIGN_S5] == 1:
			spawnAndAnimate(actor=cast[2])
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 108 # 0x6c, b'\x00l'
		save[CELL_SELF + 1] = 12856 # 0x3238, b'28'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 108 # 0x6c, b'\x00l'
		save[CELL_UP + 1] = 12855 # 0x3237, b'27'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 109 # 0x6d, b'\x00m'
		save[CELL_RIGHT + 1] = 12856 # 0x3238, b'28'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 107 # 0x6b, b'\x00k'
		save[CELL_LEFT + 1] = 12856 # 0x3238, b'28'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RAFT_JOURNEY_STATE] = 0 # 0x0, b'\x00\x00'
		
	def onTouchTrigger(self):
		if save[LOCALS + 1] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 0 # 0x0, b'\x00\x00'
local2 = 109 # 0x6d, b'\x00m'
local3 = 12856 # 0x3238, b'28'
local4 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'STAGE\x00', b'PAID\x00\x00', b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
