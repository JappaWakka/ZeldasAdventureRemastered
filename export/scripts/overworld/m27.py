# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_unknownActor116:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 109 # 0x6d, b'\x00m'
		save[CELL_SELF + 1] = 12855 # 0x3237, b'27'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 109 # 0x6d, b'\x00m'
		save[CELL_UP + 1] = 12854 # 0x3236, b'26'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 109 # 0x6d, b'\x00m'
		save[CELL_DOWN + 1] = 12856 # 0x3238, b'28'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 108 # 0x6c, b'\x00l'
		save[CELL_LEFT + 1] = 12855 # 0x3237, b'27'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
