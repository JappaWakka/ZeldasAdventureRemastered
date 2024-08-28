# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_oldSailor:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 0] == 0 and save[LOCALS + 4] == 0:
			playVoiceLine(source=self, soundId=0)
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
			save[LOCALS + 4] = 1 # 0x1, b'\x00\x01'
		
	def onItemInteractOrSoundFileDone(self):
		save[LOCALS + 4] = 0 # 0x0, b'\x00\x00'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class npc_unknownActor142:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 1] == 0 and save[LOCALS + 4] == 0:
			playVoiceLine(source=self, soundId=5)
			save[LOCALS + 1] = 1 # 0x1, b'\x00\x01'
			save[LOCALS + 4] = 1 # 0x1, b'\x00\x01'
		
	def onItemInteractOrSoundFileDone(self):
		save[LOCALS + 4] = 0 # 0x0, b'\x00\x00'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class item_weapon_hourglass:
	def onTouchOrPushBlockStoppedMoving(self):
		save[Hourglass] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 112 # 0x70, b'\x00p'
		save[CELL_SELF + 1] = 12848 # 0x3230, b'20'
		save[CELL_SELF + 2] = 24832 # 0x6100, b'a\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 112 # 0x70, b'\x00p'
		save[CELL_DOWN + 1] = 12848 # 0x3230, b'20'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[INDOOR_ID] = 1 # 0x1, b'\x00\x01'
		player.x = 118
		player.y = 168
		setSpriteGroup(0) # Usually the sprite for UP
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 0 # 0x0, b'\x00\x00'
local2 = 0 # 0x0, b'\x00\x00'
local3 = 0 # 0x0, b'\x00\x00'
local4 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'CAPCON\x00\x00', b'FORCON\x00\x00', b'STAGE\x00', b'STAGE2\x00\x00', b'TALK\x00\x00']],
]
