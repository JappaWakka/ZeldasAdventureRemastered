# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class item_weapon_wand:
	def onTouchOrPushBlockStoppedMoving(self):
		save[Wand] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[Wand] < 1:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 104 # 0x68, b'\x00h'
		save[CELL_SELF + 1] = 12851 # 0x3233, b'23'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 104 # 0x68, b'\x00h'
		save[CELL_UP + 1] = 12850 # 0x3232, b'22'
		save[CELL_UP + 2] = 115 # 0x73, b'\x00s'
		save[CELL_DOWN + 0] = 104 # 0x68, b'\x00h'
		save[CELL_DOWN + 1] = 12852 # 0x3234, b'24'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 105 # 0x69, b'\x00i'
		save[CELL_RIGHT + 1] = 12851 # 0x3233, b'23'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 103 # 0x67, b'\x00g'
		save[CELL_LEFT + 1] = 12851 # 0x3233, b'23'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		
# Local variables
local0 = 1 # 0x1, b'\x00\x01'
local1 = 103 # 0x67, b'\x00g'
local2 = 13104 # 0x3330, b'30'
local3 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'NUM_WANDS\x00', b'TRIG_CELL_1\x00', b'TRIG_CELL_2\x00', b'TRIG_CELL_3\x00']],
]
