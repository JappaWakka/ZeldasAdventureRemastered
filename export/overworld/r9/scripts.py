# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_gwynla:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 0] == 0 and save[LOCALS + 3] == 0:
			playVoiceLine(source=self, soundId=0)
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
			save[LOCALS + 3] = 1 # 0x1, b'\x00\x01'
		
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 2] == 0:
			save[LOCALS + 2] = 1 # 0x1, b'\x00\x01'
		
		if save[LOCALS + 2] == 1 and save[Noise] == 0:
			op12_0x2cd0(actor=cast[2])
			save[Noise] = 2 # 0x2, b'\x00\x02'
		
		save[LOCALS + 3] = 0 # 0x0, b'\x00\x00'
		
	def onLoad_maybe(self):
		if save[Noise] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class npc_lonlyn:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 1] == 0 and save[LOCALS + 3] == 0:
			playVoiceLine(source=self, soundId=3)
			save[LOCALS + 1] = 1 # 0x1, b'\x00\x01'
		
	def onItemInteractOrSoundFileDone(self):
		rupees += 25
		save[LOCALS + 3] = 0 # 0x0, b'\x00\x00'
		save[LONLYN_GAVE_RUPEES] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		if save[Noise] == 1 and save[LONLYN_GAVE_RUPEES] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class item_weapon_noise:
	def onTouchOrPushBlockStoppedMoving(self):
		save[Noise] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[Noise] == 2:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 114 # 0x72, b'\x00r'
		save[CELL_SELF + 1] = 14592 # 0x3900, b'9\x00'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 114 # 0x72, b'\x00r'
		save[CELL_UP + 1] = 14336 # 0x3800, b'8\x00'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 114 # 0x72, b'\x00r'
		save[CELL_DOWN + 1] = 12592 # 0x3130, b'10'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 113 # 0x71, b'\x00q'
		save[CELL_LEFT + 1] = 14592 # 0x3900, b'9\x00'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 0 # 0x0, b'\x00\x00'
local2 = 0 # 0x0, b'\x00\x00'
local3 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'GWYNCON\x00', b'LONCON\x00\x00', b'STAGE\x00', b'TALK\x00\x00']],
]
