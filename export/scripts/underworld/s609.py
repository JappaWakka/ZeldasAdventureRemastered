# This is not real python, but approxiamates it.

# Actor description 0
# Used for actors: [0]
class npc_purpleStallOwner:
	def onLoad_maybe(self):
		spawnAndAnimate(actor=self)
		
		if save[Ticket_RedKnight] == 0:
			playVoiceLine(source=self, soundId=0)
			spawnAndAnimate(actor=cast[2])
			spawnAndAnimate(actor=cast[3])
		
# Actor description 1
# Used for actors: [1]
class item_treasure_admitTicket:
	def onTouch(self):
		registerAsTreasureListener(actor=self)
		
	def onPurchaseOrAnimationComplete(self):
		if save[Ticket_RedKnight] == 0:
			save[Ticket_RedKnight] = 1 # 0x1, b'\x00\x01'
			showSparklesAndDespawn(actor=self)
			despawn(actor=cast[2])
			despawn(actor=cast[3])
		
	def onHitOrIteractIntercept(self):
		if save[Ticket_RedKnight] == 0:
			tryPurchaseItem(merchant=self)
		
	def onLoad_maybe(self):
		if save[Ticket_RedKnight] == 0:
			spawnAndAnimate(actor=self)
		
class Cell:
	def onEntry(self):
		if save[RESPAWN_CELL_ID_maybe] == 8:
			player.x = 0
			player.y = 96
			setSpriteGroup(1) # Usually the sprite for RIGHT
		else:
			player.x = 266
			player.y = 100
			setSpriteGroup(3) # Usually the sprite for LEFT
		
		save[CELL_SELF + 0] = 29494 # 0x7336, b's6'
		save[CELL_SELF + 1] = 12345 # 0x3039, b'09'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 29494 # 0x7336, b's6'
		save[CELL_RIGHT + 1] = 12592 # 0x3130, b'10'
		save[CELL_RIGHT + 2] = 102 # 0x66, b'\x00f'
		save[CELL_LEFT + 0] = 29494 # 0x7336, b's6'
		save[CELL_LEFT + 1] = 12344 # 0x3038, b'08'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_CELL_ID_maybe] = 9 # 0x9, b'\x00\t'
		
	def onTouchTrigger(self):
		if save[Ticket_RedKnight] == 1:
			returnValue = 1
		else:
			returnValue = 0
		
# Local variables
local0 = 29494 # 0x7336, b's6'
local1 = 12592 # 0x3130, b'10'
local2 = 102 # 0x66, b'\x00f'
# Extra script data
extraData = [
	[[b'TRIGCELL1\x00', b'TRIGCELL2\x00', b'TRIGCELL3\x00']],
]
