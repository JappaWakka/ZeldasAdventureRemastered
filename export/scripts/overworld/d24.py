# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_goriya:
	def onDeathOrRaftRideFinished(self):
		if save[LOCALS + 0] == 0 and save[Boomerang] == 0:
			op12_0x2cd0(actor=cast[1])
			save[Boomerang] = 2 # 0x2, b'\x00\x02'
		else:
			save[LOCALS + 0] += 1
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [1]
class item_weapon_boomerang:
	def onTouch(self):
		save[Boomerang] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[Boomerang] == 2:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 100 # 0x64, b'\x00d'
		save[CELL_SELF + 1] = 12852 # 0x3234, b'24'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 101 # 0x65, b'\x00e'
		save[CELL_RIGHT + 1] = 12852 # 0x3234, b'24'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'NUM_MON\x00']],
]
