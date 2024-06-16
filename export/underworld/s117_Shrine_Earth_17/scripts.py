# This is not real python, but approxiamates it.

class Cell:
	def onEntry(self):
		darkenRoom_maybe()
		save[CELL_SELF + 0] = 29489 # 0x7331, b's1'
		save[CELL_SELF + 1] = 12599 # 0x3137, b'17'
		save[CELL_SELF + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_UP + 0] = 29489 # 0x7331, b's1'
		save[CELL_UP + 1] = 12600 # 0x3138, b'18'
		save[CELL_UP + 2] = 102 # 0x66, b'\x00f'
		save[CELL_DOWN + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_DOWN + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 0] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 1] = 0 # 0x0, b'\x00\x00'
		save[CELL_RIGHT + 2] = 0 # 0x0, b'\x00\x00'
		save[CELL_LEFT + 0] = 29489 # 0x7331, b's1'
		save[CELL_LEFT + 1] = 12598 # 0x3136, b'16'
		save[CELL_LEFT + 2] = 102 # 0x66, b'\x00f'
		save[RESPAWN_CELL_ID_maybe] = 17 # 0x11, b'\x00\x11'
		
# No local variables

# Extra script data
extraData = [
	[[]],
]
