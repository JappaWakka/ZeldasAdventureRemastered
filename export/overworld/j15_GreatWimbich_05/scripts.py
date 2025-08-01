# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class enemy_rope:
	def onDeathOrRaftRideFinished(self):
		if save[Pyros] == 0:
			spawnAndAnimate(actor=cast[1])
			spawnAndAnimate(actor=cast[2])
			spawnAndAnimate(actor=cast[3])
			spawnAndAnimate(actor=cast[4])
			spawnAndAnimate(actor=cast[5])
			spawnAndAnimate(actor=cast[6])
			op12_0x2cd0(actor=cast[7])
			save[Pyros] = 2 # 0x2, b'\x00\x02'
		
	def onLoad_maybe(self):
		if save[Pyros] == 0:
			spawnAndAnimate(actor=self)
		
# Actor description 2
# Used for actors: [7]
class item_weapon_pyros:
	def onTouchOrPushBlockStoppedMoving(self):
		save[Pyros] = 1 # 0x1, b'\x00\x01'
		showSparklesAndDespawn(actor=self)
		
	def onItemInteractOrSoundFileDone(self):
		if save[LOCALS + 1] == 1 and save[LOCALS + 0] == 0 and save[Pyros] == 0:
			despawn(actor=cast[0])
			save[LOCALS + 0] = 1 # 0x1, b'\x00\x01'
			allowPlayerInputs = True
		
		if save[LOCALS + 1] == 0 and save[Pyros] == 0 and save[LOCALS + 0] == 0:
			playVoiceLine(source=self, soundId=0)
			save[LOCALS + 1] = 1 # 0x1, b'\x00\x01'
			allowPlayerInputs = False
		
	def onLoad_maybe(self):
		if save[Pyros] == 2:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_SELF + 1] = 12597 # 0x3135, b'15'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 106 # 0x6a, b'\x00j'
		save[CELL_DOWN + 1] = 12598 # 0x3136, b'16'
		save[CELL_DOWN + 2] = 115 # 0x73, b'\x00s'
		save[CELL_RIGHT + 0] = 107 # 0x6b, b'\x00k'
		save[CELL_RIGHT + 1] = 12597 # 0x3135, b'15'
		save[CELL_RIGHT + 2] = 115 # 0x73, b'\x00s'
		save[CELL_LEFT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 2] = 0 # 0x0, b'\x00\x00'
		
# Local variables
local0 = 0 # 0x0, b'\x00\x00'
local1 = 0 # 0x0, b'\x00\x00'
# Extra script data
extraData = [
	[[b'APPEAR\x00\x00', b'PLAYFLUTE\x00']],
]
