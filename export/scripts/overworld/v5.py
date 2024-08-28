# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_thabul:
	def onTouchOrPushBlockStoppedMoving(self):
		if save[LOCALS + 0] == 0:
			playVoiceLine(source=self, soundId=0)
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 0] == 1:
			playVoiceLine(source=self, soundId=1)
			save[LOCALS + 0] = 2 # 0x2, b'\x00\x02'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[CELL_ENTRY_DIRECTION] == 1:
			player.x = 36
			player.y = 72
			setSpriteGroup(1) # Usually the sprite for RIGHT
		
		save[CELL_SELF + 0] = 118 # 0x76, b'\x00v'
		save[CELL_SELF + 1] = 13568 # 0x3500, b'5\x00'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 118 # 0x76, b'\x00v'
		save[CELL_DOWN + 1] = 13824 # 0x3600, b'6\x00'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 119 # 0x77, b'\x00w'
		save[CELL_RIGHT + 1] = 13568 # 0x3500, b'5\x00'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 116 # 0x74, b'\x00t'
		save[CELL_LEFT + 1] = 13921 # 0x3661, b'6a'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		setLocationOnMap(v4)
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'THACON\x00\x00']],
]
