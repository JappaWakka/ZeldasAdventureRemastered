# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_whiteSteedLodge_unknownActor122:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 1] == 0:
			playVoiceLine(source=self, soundId=1)
			save[LOCALS + 1] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [1]
class npc_waiter:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 0] == 0:
			playVoiceLine(source=self, soundId=1)
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class npc_whiteSteedLodge_unknownActor124:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: [3]
class npc_whiteSteedLodge_unknownActor125:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 110 # 0x6e, b'\x00n'
		save[CELL_SELF + 1] = 12593 # 0x3131, b'11'
		save[CELL_SELF + 2] = 24832 # 0x6100, b'a\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 110 # 0x6e, b'\x00n'
		save[CELL_DOWN + 1] = 12593 # 0x3131, b'11'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[HAS_ENTERED_WHITE_STEED_LODGE] = 1 # 0x1, b'\x00\x01'
		save[INDOOR_ID] = 1 # 0x1, b'\x00\x01'
		player.x = 142
		player.y = 168
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'DEBCON\x00\x00', b'DERCON\x00\x00']],
]
