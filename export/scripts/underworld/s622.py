# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_greenKnightSpectator:
	def onLoad_maybe(self):
		if save[RED_KNIGHT_DEFEATED] == 1 and save[GREEN_KNIGHT_DEFEATED] == 1 and save[BLUE_KNIGHT_DEFEATED] == 1:
			nop
		else:
			spawnAndAnimate(actor=cast[1])
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 23:
			player.x = 150
			player.y = 48
			setSpriteGroup(2) # Usually the sprite for DOWN
		
		save[CELL_SELF + 0] = 29494 # 0x7336, b's6'
		save[CELL_SELF + 1] = 12850 # 0x3232, b'22'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29494 # 0x7336, b's6'
		save[CELL_UP + 1] = 12851 # 0x3233, b'23'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29494 # 0x7336, b's6'
		save[CELL_RIGHT + 1] = 12849 # 0x3231, b'21'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		save[RESPAWN_CELL_ID_maybe] = 22 # 0x16, b'\x00\x16'
		
	def onTouchTrigger(self):
		if save[RED_KNIGHT_DEFEATED] == 1 and save[GREEN_KNIGHT_DEFEATED] == 1 and save[BLUE_KNIGHT_DEFEATED] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 29494 # 0x7336, b's6'
local1 = 12851 # 0x3233, b'23'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
