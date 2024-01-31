# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_friendlyGoblin:
	def onItemInteractOrSoundFileDone(self):
		if save[Joust] == 0:
			op12_0x2cd0(actor=cast[1])
		
	def onLoad_maybe(self):
		if save[Joust] == 0:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=0)
		
# Actor description 1
# Used for actors: [1]
class item_weapon_joust:
	def onTouch(self):
		save[Joust] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 104 # 0x68, b'\x00h'
		save[CELL_SELF + 1] = 14592 # 0x3900, b'9\x00'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 104 # 0x68, b'\x00h'
		save[CELL_DOWN + 1] = 12592 # 0x3130, b'10'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 103 # 0x67, b'\x00g'
		save[CELL_LEFT + 1] = 14592 # 0x3900, b'9\x00'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
