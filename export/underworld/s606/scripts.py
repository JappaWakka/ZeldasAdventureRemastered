# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_archeryMinigameOwner:
	def onLoad_maybe(self):
		if save[140] == 3:
			nop
		else:
			spawnAndAnimate(actor=self)
			playVoiceLine(source=self, soundId=0)
		
# Actor description 1
# Used for actors: [1]
class env_archeryTarget:
	def onDeathOrRaftRideFinished(self):
		rupees += 25
		spawnAndAnimate(actor=cast[4])
		save[140] += 1
		
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [2]
class env_archeryTarget:
	def onDeathOrRaftRideFinished(self):
		rupees += 50
		spawnAndAnimate(actor=cast[5])
		save[140] += 1
		
	def onLoad_maybe(self):
		save[LOCALS + 1] += 1
		spawnAndAnimate(actor=self)
		
# Actor description 3
# Used for actors: [3]
class env_archeryTarget:
	def onDeathOrRaftRideFinished(self):
		rupees += 100
		spawnAndAnimate(actor=cast[6])
		save[140] += 1
		
	def onLoad_maybe(self):
		save[LOCALS + 1] += 1
		spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 7:
			player.x = 34
			player.y = 168
			setSpriteGroup(0) # Usually the sprite for UP
		
		save[CELL_SELF + 0] = 29494 # 0x7336, b's6'
		save[CELL_SELF + 1] = 12342 # 0x3036, b'06'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 29494 # 0x7336, b's6'
		save[CELL_DOWN + 1] = 12343 # 0x3037, b'07'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29494 # 0x7336, b's6'
		save[CELL_LEFT + 1] = 12341 # 0x3035, b'05'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 6 # 0x6, b'\x00\x06'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'TRAINCON\x00\x00', b'ALIVE\x00']],
]
