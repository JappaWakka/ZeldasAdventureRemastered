# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0, 1, 2, 3]
class enemy_spikedBlock:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 1
# Used for actors: [4]
class env_switch:
	def onHitOrIteractIntercept(self):
		if save[LOCALS + 0] == 0:
			setSpriteGroup(1) # Usually the sprite for RIGHT
			hide(actor=cast[0])
			hide(actor=cast[1])
			hide(actor=cast[2])
			hide(actor=cast[3])
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		else:
			setSpriteGroup(0) # Usually the sprite for UP
			show(actor=cast[0])
			show(actor=cast[1])
			show(actor=cast[2])
			show(actor=cast[3])
			save[LOCALS + 0] = 0 # 0x0, b'\x00\x00'
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 2:
			player.x = 284
			player.y = 96
			setSpriteGroup(3) # Usually the sprite for LEFT
		else:
			player.x = 14
			player.y = 102
			setSpriteGroup(1) # Usually the sprite for RIGHT
		
		save[CELL_SELF + 0] = 29492 # 0x7334, b's4'
		save[CELL_SELF + 1] = 12339 # 0x3033, b'03'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29492 # 0x7334, b's4'
		save[CELL_RIGHT + 1] = 12338 # 0x3032, b'02'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 29492 # 0x7334, b's4'
		save[CELL_LEFT + 1] = 12340 # 0x3034, b'04'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_CELL_ID_maybe] = 3 # 0x3, b'\x00\x03'
		
		if save[MALMORD_DEFEATED] == 0:
			playVoiceLine(source=self, soundId=0)
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'SWITCH\x00\x00']],
]
