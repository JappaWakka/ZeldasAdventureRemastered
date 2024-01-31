# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_skaterDude:
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 1] == 0:
			save[LOCALS + 0] += 1
		
		if save[LOCALS + 0] == 100 and save[LOCALS + 1] == 0:
			save[LOCALS + 1] = 1 # 0x1, b'\x00\x01'
			playVoiceLine(source=self, soundId=0)
			spawnAndAnimate(actor=cast[0])
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 103 # 0x67, b'\x00g'
		save[CELL_SELF + 1] = 12593 # 0x3131, b'11'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 103 # 0x67, b'\x00g'
		save[CELL_UP + 1] = 12592 # 0x3130, b'10'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 104 # 0x68, b'\x00h'
		save[CELL_RIGHT + 1] = 12593 # 0x3131, b'11'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'EGGCOUNT\x00\x00', b'SKATEBY\x00']],
]
