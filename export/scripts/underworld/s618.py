# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_yellowStallOwner:
	def onLoad_maybe(self):
		if save[Ticket_BlueGreenKnights] == 0:
			spawnAndAnimate(actor=self)
		
		if save[Ticket_BlueGreenKnights] == 0:
			playVoiceLine(source=self, soundId=0)
			spawnAndAnimate(actor=cast[2])
			spawnAndAnimate(actor=cast[3])
		
# Actor description 1
# Used for actors: [1]
class item_treasure_squareTicket:
	def onTouchOrPushBlockStoppedMoving(self):
		registerAsTreasureListener(actor=self)
		
	def onPurchaseOrAnimationComplete(self):
		if save[Ticket_BlueGreenKnights] == 0:
			save[Ticket_BlueGreenKnights] = 1 # 0x1, b'\x00\x01'
			showSparklesAndDespawn(actor=self)
			despawn(actor=cast[2])
			despawn(actor=cast[3])
		
	def onHitOrIteractIntercept(self):
		if save[Ticket_BlueGreenKnights] == 0:
			tryPurchaseItem(merchant=self)
		
	def onLoad_maybe(self):
		if save[Ticket_BlueGreenKnights] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		save[CELL_SELF + 0] = 29494 # 0x7336, b's6'
		save[CELL_SELF + 1] = 12600 # 0x3138, b'18'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29494 # 0x7336, b's6'
		save[CELL_UP + 1] = 12601 # 0x3139, b'19'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29494 # 0x7336, b's6'
		save[CELL_LEFT + 1] = 12599 # 0x3137, b'17'
		save[CELL_LEFT + 2] = 115 # 0x73, b'\x00s'
		save[RESPAWN_CELL_ID_maybe] = 18 # 0x12, b'\x00\x12'
		
	def onTouchTrigger(self):
		if save[Ticket_BlueGreenKnights] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 29494 # 0x7336, b's6'
local1 = 12601 # 0x3139, b'19'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
