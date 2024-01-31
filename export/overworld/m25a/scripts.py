# This is not real python, but approxiamates it.

# Actor description 1
# Used for actors: [1]
class item_treasure_heartContainer:
	def onTouch(self):
		showSparklesAndDespawn(actor=self)
		player.maxHealth += ONE_HEART, healToFull()
		save[HEART_CONTAINER_M25a] = 1 # 0x1, b'\x00\x01'
		playSoundEffect(source=self, soundId=3)
		
	def onLoad_maybe(self):
		if save[HEART_CONTAINER_M25a] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class env_switch:
	def onHitOrIteractIntercept(self):
		if save[LOCALS + 0] == 0:
			setSpriteGroup(1) # Usually the sprite for RIGHT
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
		else:
			setSpriteGroup(0) # Usually the sprite for UP
			save[LOCALS + 0] = 0 # 0x0, b'\x00\x00'
		
		if save[LOCALS + 0] == 1 and save[LOCALS + 1] == 0:
			save[LOCALS + 1] = 1 # 0x1, b'\x00\x01'
			spawnAndAnimate(actor=cast[0])
		
	def onLoad_maybe(self):
		if save[HEART_CONTAINER_M25a] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 103 # 0x67, b'\x00g'
		save[CELL_SELF + 1] = 12851 # 0x3233, b'23'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 109 # 0x6d, b'\x00m'
		save[CELL_DOWN + 1] = 12853 # 0x3235, b'25'
		save[CELL_DOWN + 2] = 102 # 0x66, b'\x00f'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		player.x = 0
		player.y = 162
		setSpriteGroup(0) # Usually the sprite for UP
		save[INDOOR_ID] = 1 # 0x1, b'\x00\x01'
		
	def onTouchTrigger(self):
		if save[LOCALS + 1] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'SWITCH\x00\x00', b'BRIDGE\x00\x00']],
]
