# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_lounger:
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 7] == 1:
			playVoiceLine(source=self, soundId=2)
			save[LOCALS + 7] = 2 # 0x2, b'\x00\x02'
		
		if save[LOUNGER_LINE_K13] == 0:
			playVoiceLine(source=self, soundId=1)
			save[LOCALS + 7] = 2 # 0x2, b'\x00\x02'
			save[LOUNGER_LINE_K13] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		if save[LOUNGER_LINE_K13] == 0:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=0)
		else:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=4)
		
# Actor description 1
# Used for actors: [1]
class npc_shopkeeperDog:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class env_teleportPixel:
	def onTouchOrPushBlockStoppedMoving(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: [3]
class env_teleportPixel:
	def onTouchOrPushBlockStoppedMoving(self):
		teleportPlayerTo(cellName=(char*) &save[LOCALS + 3])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 4
# Used for actors: [4]
class item_weapon_shortAxe:
	def onTouchOrPushBlockStoppedMoving(self):
		save[ShortAxe] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		save[Bone] = 0 # 0x0, b'\x00\x00'
		
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 6] == 0 and save[ShortAxe] == 0:
			op12_0x2cd0(actor=cast[4])
			save[LOCALS + 6] = 1 # 0x1, b'\x00\x01'
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 107 # 0x6b, b'\x00k'
		save[CELL_SELF + 1] = 12595 # 0x3133, b'13'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 107 # 0x6b, b'\x00k'
		save[CELL_DOWN + 1] = 12596 # 0x3134, b'14'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 108 # 0x6c, b'\x00l'
		save[CELL_RIGHT + 1] = 12595 # 0x3133, b'13'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		setLocationOnMap(k12)
		
		if save[INDOOR_ID] == 1:
			save[INDOOR_ID] = 0 # 0x0, b'\x00\x00'
			player.x = 26
			player.y = 146
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		if save[INDOOR_ID] == 2:
			save[INDOOR_ID] = 0 # 0x0, b'\x00\x00'
			player.x = 238
			player.y = 144
			setSpriteGroup(2) # Usually the sprite for DOWN
		
	def onTouchTrigger(self):
		returnValue = 1
		
# Local variables
local0 = 107 # 0x6b, b'\x00k'
local1 = 12595 # 0x3133, b'13'
local2 = 24934 # 0x6166, b'af'
local3 = 107 # 0x6b, b'\x00k'
local4 = 12595 # 0x3133, b'13'
local5 = 25190 # 0x6266, b'bf'
local6 = 0 # 0x0, b'\x00\x00'
local7 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00', b'TRIGCELL4\x00', b'TRIGCELL5\x00', b'TRIGCELL6\x00', b'APPEAR\x00\x00', b'STAGE\x00']],
]
