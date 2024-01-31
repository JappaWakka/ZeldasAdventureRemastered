# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_faust:
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 3] == 0 and save[LOCALS + 4] == 0 and save[LOCALS + 5] == 0 and save[RUPEE_COUNT] > 1:
			rupees -= 2
			save[LOCALS + 5] = 1 # 0x1, b'\x00\x01'
			save[LOCALS + 3] = 1 # 0x1, b'\x00\x01'
		else:
			save[LOCALS + 3] = 0 # 0x0, b'\x00\x00'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
		if save[RESPAWN_CELL_ID_maybe] == 1 and save[Calm] == 0:
			playVoiceLine(source=self, soundId=2)
			spawnAndAnimate(actor=cast[2])
			save[LOCALS + 5] = 1 # 0x1, b'\x00\x01'
		else:
		
		if save[RESPAWN_CELL_ID_maybe] == 1 and save[Calm] == 1:
			spawnAndAnimate(actor=cast[2])
			save[LOCALS + 5] = 1 # 0x1, b'\x00\x01'
		
		if save[RESPAWN_CELL_ID_maybe] == 0:
			playVoiceLine(source=self, soundId=0)
			spawnAndAnimate(actor=cast[1])
			save[LOCALS + 3] = 1 # 0x1, b'\x00\x01'
		
# Actor description 1
# Used for actors: [1, 2]
class env_redBootsEffect:
	def onDeathOrRaftRideFinished(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 1:
			save[LOCALS + 4] = 1 # 0x1, b'\x00\x01'
			save[LOCALS + 0] = 0 # 0x0, b'\x00\x00'
			save[LOCALS + 1] = 0 # 0x0, b'\x00\x00'
			save[LOCALS + 2] = 0 # 0x0, b'\x00\x00'
		
		save[CELL_SELF + 0] = 117 # 0x75, b'\x00u'
		save[CELL_SELF + 1] = 12600 # 0x3138, b'18'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 117 # 0x75, b'\x00u'
		save[CELL_UP + 1] = 12599 # 0x3137, b'17'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 118 # 0x76, b'\x00v'
		save[CELL_RIGHT + 1] = 12600 # 0x3138, b'18'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 0 # 0x0, b'\x00\x00'
		setLocationOnMap(u17)
		
	def onTouchTrigger(self):
		if save[LOCALS + 5] == 0:
			returnValue = 0
		else:
			returnValue = 1
		
# Local variables
local0 = 116 # 0x74, b'\x00t'
local1 = 12600 # 0x3138, b'18'
local2 = 102 # 0x66, b'\x00f'
local3 = 0 # 0x0, b'\x00\x00'
local4 = 0 # 0x0, b'\x00\x00'
local5 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00', b'PAID\x00\x00', b'FROMT18\x00', b'PAIDDONE\x00\x00']],
]
