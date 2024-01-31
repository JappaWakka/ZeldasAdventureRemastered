# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class item_treasure_harp:
	def onTouch(self):
		save[Harp] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onLoad_maybe(self):
		if save[Harp] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[CELL_ENTRY_DIRECTION] == 1:
			player.x = 24
			player.y = 110
			setSpriteGroup(1) # Usually the sprite for RIGHT
		else:
			player.x = 288
			player.y = 88
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		save[CELL_SELF + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_SELF + 1] = 12849 # 0x3231, b'21'
		save[CELL_SELF + 2] = 24832 # 0x6100, b'a\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 111 # 0x6f, b'\x00o'
		save[CELL_RIGHT + 1] = 12850 # 0x3232, b'22'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_LEFT + 1] = 12849 # 0x3231, b'21'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		setLocationOnMap(j20)
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
