# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_tektite:
	def onDeathOrRaftRideFinished(self):
		spawnAndAnimate(actor=cast[1])
		spawnAndAnimate(actor=cast[2])
		spawnAndAnimate(actor=cast[3])
		spawnAndAnimate(actor=cast[4])
		spawnAndAnimate(actor=cast[5])
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29489 # 0x7331, b's1'
		save[CELL_SELF + 1] = 12337 # 0x3031, b'01'
		save[CELL_SELF + 2] = 24832 # 0x6100, b'a\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 103 # 0x67, b'\x00g'
		save[CELL_LEFT + 1] = 13106 # 0x3332, b'32'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[INDOOR_ID] = 2 # 0x2, b'\x00\x02'
		player.x = 22
		player.y = 80
		setSpriteGroup(2) # Usually the sprite for DOWN
		setLocationOnMap(h31)
		
	def onTouchTrigger(self):
		returnValue = 2
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
