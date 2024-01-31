# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2]
class npc_molluska:
	def onDeathOrRaftRideFinished(self):
		save[149] += 1
		
		if save[149] == 3 and save[119] == 0:
			op12_0x2cd0(actor=cast[3])
			save[119] = 2 # 0x2, b'\x00\x02'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [3]
class item_treasure_blackKey:
	def onTouch(self):
		save[119] = 1 # 0x1, b'\x00\x01'
		save[KEY_COUNT] += 1
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[119] == 2:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 19:
			player.x = 84
			player.y = 168
			setSpriteGroup(0) # Usually the sprite for UP
		else:
			player.x = 272
			player.y = 74
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		save[CELL_SELF + 0] = 29490 # 0x7332, b's2'
		save[CELL_SELF + 1] = 12848 # 0x3230, b'20'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 29490 # 0x7332, b's2'
		save[CELL_DOWN + 1] = 12601 # 0x3139, b'19'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 20 # 0x14, b'\x00\x14'
		
	def onTouchTrigger(self):
		if save[121] == 0 and save[KEY_COUNT] > 0:
			save[KEY_COUNT] -= 1
			save[121] = 1 # 0x1, b'\x00\x01'
		else:
			returnValue = 0, playSoundEffect(source=self, soundId=2)
		
		if save[121] == 1:
			teleportPlayerTo(cellName=(char*) &save[LOCALS + 0])
		
# Local variables
local0 = 29490 # 0x7332, b's2'
local1 = 12849 # 0x3231, b'21'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
