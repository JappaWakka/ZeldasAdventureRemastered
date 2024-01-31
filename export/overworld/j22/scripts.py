# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_beggar:
	def onItemInteractOrSoundFileDone(self):
		if save[IS_INTERACT_TRIGGER] == 0 and save[LOCALS + 3] == 1:
			save[LOCALS + 3] = 0 # 0x0, b'\x00\x00'
		
		if save[IS_INTERACT_TRIGGER] == 1 and save[Firestorm] == 0 and save[LOCALS + 3] == 0:
			playVoiceLine(source=self, soundId=2)
			rupees -= 5
			op12_0x2cd0(actor=cast[2])
			save[Firestorm] = 2 # 0x2, b'\x00\x02'
		
	def onLoad_maybe(self):
		if save[Firestorm] == 0:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=0)
			save[LOCALS + 3] = 1 # 0x1, b'\x00\x01'
		
# Actor description 1
# Used for actors: [1]
class env_teleportPixel:
	def onTouch(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class item_weapon_firestorm:
	def onTouch(self):
		save[Firestorm] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[Firestorm] == 2:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_SELF + 1] = 12850 # 0x3232, b'22'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_UP + 1] = 12849 # 0x3231, b'21'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_DOWN + 1] = 12851 # 0x3233, b'23'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 105 # 0x69, b'\x00i'
		save[CELL_LEFT + 1] = 12850 # 0x3232, b'22'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		setLocationOnMap(j21)
		
		if save[INSIDE_MOBLIN_INN] == 1:
			player.x = 104
			player.y = 144
		
	def onRespawn_maybe(self):
		save[INSIDE_MOBLIN_INN] = 0 # 0x0, b'\x00\x00'
		
	def onTouchTrigger(self):
		if save[RedBoots] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 106 # 0x6a, b'\x00j'
local1 = 12850 # 0x3232, b'22'
local2 = 24934 # 0x6166, b'af'
local3 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00', b'TALK\x00\x00']],
]
