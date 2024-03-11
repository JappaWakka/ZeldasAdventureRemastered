function WorldMap_Add_VisitedTile(TileX, TileY)
{
	for (var i = 0; i <= array_length(global.WorldMap_Tiles)-1; i++)
	{
		if global.WorldMap_Tiles[i][1] = TileX and global.WorldMap_Tiles[i][2] = TileY
		{
			ds_list_add(global.VisitedMaps,global.WorldMap_Tiles[i][3])
		}
	}
}

function WorldMap_GetHasVisitedTile(TileID)
{
	if ds_list_find_index(global.VisitedMaps,TileID) != -1
	{
		return true
	}
	else
	{
		return false
	}
}
function WorldMap_GetCurrentTileID()
{
	for (var i = 0; i <= array_length(global.WorldMap_Tiles)-1; i++)
	{
		if global.WorldMap_Tiles[i][1] = global.CurrentTile.x and global.WorldMap_Tiles[i][2] = global.CurrentTile.y
		{
			return global.WorldMap_Tiles[i][3]
		}
	}
	return -1
}
function WorldMap_UpdateVisitedTiles(IDArray)
{
	for (var i = 0; i <= array_length(IDArray)-1; i++)
	{
		if IDArray[i] != "" and WorldMap_GetHasVisitedTile(IDArray[i]) = false
		{	
			ds_list_add(global.VisitedMaps,IDArray[i])
		}
			
	}
}
function WorldMap_Tiles_Init()
{
	global.WorldMap_Tiles =
	[
	//Overworld
		[Maps.Overworld,25,0,0,MapTileType.Regular],		//0
		[Maps.Overworld,25,1,1,MapTileType.Regular],		//1
		[Maps.Overworld,24,2,2,MapTileType.Regular],		//2
		[Maps.Overworld,25,2,3,MapTileType.Regular],		//3
		[Maps.Overworld,24,3,4,MapTileType.Regular],		//4
		[Maps.Overworld,25,3,5,MapTileType.Regular],		//5
		[Maps.Overworld,17,4,6,MapTileType.Regular],		//6
		[Maps.Overworld,18,4,7,MapTileType.Regular],		//7
		[Maps.Overworld,20,4,16,MapTileType.Regular],		//8
		[Maps.Overworld,21,4,9,MapTileType.Regular],		//9
		[Maps.Overworld,22,4,10,MapTileType.Regular],		//10
		[Maps.Overworld,23,4,11,MapTileType.Regular],		//11
		[Maps.Overworld,24,4,12,MapTileType.Regular],		//12
		[Maps.Overworld,25,4,13,MapTileType.Regular],		//13
		[Maps.Overworld,17,5,14,MapTileType.Regular],		//14
		[Maps.Overworld,18,5,15,MapTileType.Regular],		//15
		[Maps.Overworld,19,5,16,MapTileType.Regular],		//16
		[Maps.Overworld,21,5,17,MapTileType.Regular],		//17
		[Maps.Overworld,22,5,18,MapTileType.Regular],		//18
		[Maps.Overworld,23,5,19,MapTileType.Regular],		//19
		[Maps.Overworld,24,5,20,MapTileType.Regular],		//20
		[Maps.Overworld,25,5,21,MapTileType.Regular],		//21
		[Maps.Overworld,0,6,22,MapTileType.Regular],		//22
		[Maps.Overworld,1,6,23,MapTileType.Regular],		//23
		[Maps.Overworld,2,6,24,MapTileType.Regular],		//24
		[Maps.Overworld,3,6,25,MapTileType.Regular],		//25
		[Maps.Overworld,4,6,26,MapTileType.Regular],		//26
		[Maps.Overworld,5,6,27,MapTileType.Regular],		//27
		[Maps.Overworld,13,6,90,MapTileType.Regular],		//28
		[Maps.Overworld,17,6,29,MapTileType.Regular],		//29
		[Maps.Overworld,18,6,30,MapTileType.Regular],		//30
		[Maps.Overworld,21,6,31,MapTileType.Regular],		//31
		[Maps.Overworld,22,6,32,MapTileType.Regular],		//32
		[Maps.Overworld,23,6,33,MapTileType.Regular],		//33
		[Maps.Overworld,0,7,34,MapTileType.Regular],		//34
		[Maps.Overworld,1,7,35,MapTileType.Regular],		//35
		[Maps.Overworld,2,7,36,MapTileType.Regular],		//36
		[Maps.Overworld,3,7,37,MapTileType.Regular],		//37
		[Maps.Overworld,4,7,38,MapTileType.Regular],		//38
		[Maps.Overworld,5,7,39,MapTileType.Regular],		//39
		[Maps.Overworld,11,7,40,MapTileType.Regular],		//40
		[Maps.Overworld,12,7,41,MapTileType.Regular],		//41
		[Maps.Overworld,13,7,42,MapTileType.Regular],		//42
		[Maps.Overworld,14,7,43,MapTileType.Regular],		//43
		[Maps.Overworld,15,7,44,MapTileType.Regular],		//44
		[Maps.Overworld,16,7,45,MapTileType.Regular],		//45
		[Maps.Overworld,17,7,46,MapTileType.Regular],		//46
		[Maps.Overworld,18,7,47,MapTileType.Regular],		//47
		[Maps.Overworld,19,7,48,MapTileType.Regular],		//48
		[Maps.Overworld,21,7,49,MapTileType.Regular],		//49
		[Maps.Overworld,22,7,50,MapTileType.Regular],		//50
		[Maps.Overworld,23,7,51,MapTileType.Regular],		//51
		[Maps.Overworld,4,8,52,MapTileType.Regular],		//52
		[Maps.Overworld,5,8,53,MapTileType.Regular],		//53
		[Maps.Overworld,6,8,54,MapTileType.Regular],		//54
		[Maps.Overworld,7,8,55,MapTileType.Regular],		//55
		[Maps.Overworld,11,8,56,MapTileType.Regular],		//56
		[Maps.Overworld,12,8,57,MapTileType.Regular],		//57
		[Maps.Overworld,13,8,58,MapTileType.Regular],		//58
		[Maps.Overworld,14,8,59,MapTileType.Regular],		//59
		[Maps.Overworld,15,8,60,MapTileType.Regular],		//60
		[Maps.Overworld,16,8,61,MapTileType.Regular],		//61
		[Maps.Overworld,17,8,62,MapTileType.Regular],		//62
		[Maps.Overworld,21,8,63,MapTileType.Regular],		//63
		[Maps.Overworld,22,8,64,MapTileType.Regular],		//64
		[Maps.Overworld,23,8,65,MapTileType.Regular],		//65
		[Maps.Overworld,4,9,66,MapTileType.Regular],		//66
		[Maps.Overworld,5,9,67,MapTileType.Regular],		//67
		[Maps.Overworld,6,9,68,MapTileType.Regular],		//68
		[Maps.Overworld,7,9,69,MapTileType.Regular],		//69
		[Maps.Overworld,8,9,70,MapTileType.Regular],		//70
		[Maps.Overworld,9,9,71,MapTileType.Regular],		//71
		[Maps.Overworld,10,9,72,MapTileType.Regular],		//72
		[Maps.Overworld,11,9,73,MapTileType.Regular],		//73
		[Maps.Overworld,12,9,74,MapTileType.Regular],		//74
		[Maps.Overworld,13,9,75,MapTileType.Regular],		//75
		[Maps.Overworld,14,9,76,MapTileType.Regular],		//76
		[Maps.Overworld,15,9,77,MapTileType.Regular],		//77
		[Maps.Overworld,16,9,78,MapTileType.Regular],		//78
		[Maps.Overworld,17,9,79,MapTileType.Regular],		//79
		[Maps.Overworld,21,9,80,MapTileType.Regular],		//80
		[Maps.Overworld,22,9,81,MapTileType.Regular],		//81
		[Maps.Overworld,23,9,82,MapTileType.Regular],		//82
		[Maps.Overworld,6,10,83,MapTileType.Regular],		//83
		[Maps.Overworld,7,10,84,MapTileType.Regular],		//84
		[Maps.Overworld,8,10,85,MapTileType.Regular],		//85
		[Maps.Overworld,9,10,86,MapTileType.Regular],		//86
		[Maps.Overworld,10,10,87,MapTileType.Regular],		//87
		[Maps.Overworld,11,10,88,MapTileType.Regular],		//88
		[Maps.Overworld,12,10,89,MapTileType.Regular],		//89
		[Maps.Overworld,13,10,90,MapTileType.Regular],		//90
		[Maps.Overworld,14,10,91,MapTileType.Regular],		//91
		[Maps.Overworld,15,10,92,MapTileType.Regular],		//92
		[Maps.Overworld,16,10,91,MapTileType.Regular],		//93
		[Maps.Overworld,21,10,94,MapTileType.Regular],		//94
		[Maps.Overworld,22,10,95,MapTileType.Regular],		//95
		[Maps.Overworld,23,10,96,MapTileType.Regular],		//96
		[Maps.Overworld,7,11,110,MapTileType.Regular],		//97
		[Maps.Overworld,8,11,110,MapTileType.Regular],		//98
		[Maps.Overworld,9,11,111,MapTileType.Regular],		//99
		[Maps.Overworld,10,11,100,MapTileType.Regular],		//100
		[Maps.Overworld,11,11,101,MapTileType.Regular],		//101
		[Maps.Overworld,12,11,102,MapTileType.Regular],		//102
		[Maps.Overworld,13,11,103,MapTileType.Regular],		//103
		[Maps.Overworld,14,11,104,MapTileType.Regular],		//104
		[Maps.Overworld,15,11,105,MapTileType.Regular],		//105
		[Maps.Overworld,21,11,106,MapTileType.Regular],		//106
		[Maps.Overworld,22,11,107,MapTileType.Regular],		//107
		[Maps.Overworld,23,11,108,MapTileType.Regular],		//108
		[Maps.Overworld,9,12,121,MapTileType.Regular],		//109
		[Maps.Overworld,10,12,110,MapTileType.Regular],		//110
		[Maps.Overworld,11,12,111,MapTileType.Regular],		//111
		[Maps.Overworld,12,12,112,MapTileType.Regular],		//112
		[Maps.Overworld,13,12,113,MapTileType.Regular],		//113
		[Maps.Overworld,14,12,114,MapTileType.Regular],		//114
		[Maps.Overworld,15,12,115,MapTileType.Regular],		//115
		[Maps.Overworld,16,12,116,MapTileType.Regular],		//116
		[Maps.Overworld,22,12,117,MapTileType.Regular],		//117
		[Maps.Overworld,25,12,118,MapTileType.Regular],		//118
		[Maps.Overworld,10,13,119,MapTileType.Regular],		//119
		[Maps.Overworld,11,13,120,MapTileType.Regular],		//120
		[Maps.Overworld,12,13,121,MapTileType.Regular],		//121
		[Maps.Overworld,13,13,122,MapTileType.Regular],		//122
		[Maps.Overworld,14,13,123,MapTileType.Regular],		//123
		[Maps.Overworld,15,13,124,MapTileType.Regular],		//124
		[Maps.Overworld,16,13,125,MapTileType.Regular],		//125
		[Maps.Overworld,19,13,126,MapTileType.Regular],		//126
		[Maps.Overworld,20,13,127,MapTileType.Regular],		//127
		[Maps.Overworld,21,13,128,MapTileType.Regular],		//128
		[Maps.Overworld,22,13,129,MapTileType.Regular],		//129
		[Maps.Overworld,23,13,130,MapTileType.Regular],		//130
		[Maps.Overworld,24,13,131,MapTileType.Regular],		//131
		[Maps.Overworld,25,13,132,MapTileType.Regular],		//132
		[Maps.Overworld,9,14,133,MapTileType.Regular],		//133
		[Maps.Overworld,10,14,134,MapTileType.Regular],		//134
		[Maps.Overworld,11,14,135,MapTileType.Regular],		//135
		[Maps.Overworld,12,14,136,MapTileType.Regular],		//136
		[Maps.Overworld,13,14,137,MapTileType.Regular],		//137
		[Maps.Overworld,14,14,138,MapTileType.Regular],		//138
		[Maps.Overworld,15,14,139,MapTileType.Regular],		//139
		[Maps.Overworld,16,14,140,MapTileType.Regular],		//140
		[Maps.Overworld,17,14,141,MapTileType.Regular],		//141
		[Maps.Overworld,18,14,142,MapTileType.Regular],		//142
		[Maps.Overworld,19,14,143,MapTileType.Regular],		//143
		[Maps.Overworld,20,14,144,MapTileType.Regular],		//144
		[Maps.Overworld,21,14,145,MapTileType.Regular],		//145
		[Maps.Overworld,22,14,146,MapTileType.Regular],		//146
		[Maps.Overworld,23,14,147,MapTileType.Regular],		//147
		[Maps.Overworld,24,14,148,MapTileType.Regular],		//148
		[Maps.Overworld,25,14,149,MapTileType.Regular],		//149
		[Maps.Overworld,26,14,150,MapTileType.Regular],		//150
		[Maps.Overworld,9,15,151,MapTileType.Regular],		//151
		[Maps.Overworld,10,15,152,MapTileType.Regular],		//152
		[Maps.Overworld,11,15,153,MapTileType.Regular],		//153
		[Maps.Overworld,12,15,154,MapTileType.Regular],		//154
		[Maps.Overworld,13,15,155,MapTileType.Regular],		//155
		[Maps.Overworld,14,15,156,MapTileType.Regular],		//156
		[Maps.Overworld,15,15,157,MapTileType.Regular],		//157
		[Maps.Overworld,16,15,158,MapTileType.Regular],		//158
		[Maps.Overworld,17,15,159,MapTileType.Regular],		//159
		[Maps.Overworld,18,15,160,MapTileType.Regular],		//160
		[Maps.Overworld,19,15,161,MapTileType.Regular],		//161
		[Maps.Overworld,20,15,162,MapTileType.Regular],		//162
		[Maps.Overworld,21,15,163,MapTileType.Regular],		//163
		[Maps.Overworld,22,15,164,MapTileType.Regular],		//164
		[Maps.Overworld,23,15,165,MapTileType.Regular],		//165
		[Maps.Overworld,24,15,166,MapTileType.Regular],		//166
		[Maps.Overworld,25,15,167,MapTileType.Regular],		//167
		[Maps.Overworld,26,15,168,MapTileType.Regular],		//168
		[Maps.Overworld,9,16,169,MapTileType.Regular],		//169
		[Maps.Overworld,10,16,170,MapTileType.Regular],		//170
		[Maps.Overworld,11,15,171,MapTileType.Regular],		//171
		[Maps.Overworld,12,15,172,MapTileType.Regular],		//172
		[Maps.Overworld,13,16,173,MapTileType.Regular],		//173
		[Maps.Overworld,14,16,174,MapTileType.Regular],		//174
		[Maps.Overworld,16,15,175,MapTileType.Regular],		//175
		[Maps.Overworld,17,15,176,MapTileType.Regular],		//176
		[Maps.Overworld,18,15,177,MapTileType.Regular],		//177
		[Maps.Overworld,19,15,178,MapTileType.Regular],		//178
		[Maps.Overworld,20,15,179,MapTileType.Regular],		//179
		[Maps.Overworld,21,15,180,MapTileType.Regular],		//180
		[Maps.Overworld,22,16,163,MapTileType.Regular],		//181
		[Maps.Overworld,24,16,182,MapTileType.Regular],		//182
		[Maps.Overworld,25,16,183,MapTileType.Regular],		//183
		[Maps.Overworld,26,16,184,MapTileType.Regular],		//184
		[Maps.Overworld,27,16,185,MapTileType.Regular],		//185
		[Maps.Overworld,28,16,186,MapTileType.Regular],		//186
		[Maps.Overworld,10,17,187,MapTileType.Regular],		//187
		[Maps.Overworld,11,17,188,MapTileType.Regular],		//188
		[Maps.Overworld,12,17,189,MapTileType.Regular],		//189
		[Maps.Overworld,13,17,190,MapTileType.Regular],		//190
		[Maps.Overworld,16,17,191,MapTileType.Regular],		//191
		[Maps.Overworld,17,17,192,MapTileType.Regular],		//192
		[Maps.Overworld,18,17,193,MapTileType.Regular],		//193
		[Maps.Overworld,19,17,194,MapTileType.Regular],		//194
		[Maps.Overworld,20,17,195,MapTileType.Regular],		//195
		[Maps.Overworld,21,17,196,MapTileType.Regular],		//196
		[Maps.Overworld,28,17,197,MapTileType.Regular],		//197
		[Maps.Overworld,10,18,198,MapTileType.Regular],		//198
		[Maps.Overworld,11,18,199,MapTileType.Regular],		//199
		[Maps.Overworld,12,18,200,MapTileType.Regular],		//200
		[Maps.Overworld,15,18,215,MapTileType.Regular],		//201
		[Maps.Overworld,16,18,202,MapTileType.Regular],		//202
		[Maps.Overworld,17,18,203,MapTileType.Regular],		//203
		[Maps.Overworld,18,18,204,MapTileType.Regular],		//204
		[Maps.Overworld,19,18,205,MapTileType.Regular],		//205
		[Maps.Overworld,20,18,206,MapTileType.Regular],		//206
		[Maps.Overworld,21,18,207,MapTileType.Regular],		//207
		[Maps.Overworld,4,19,208,MapTileType.Regular],		//208
		[Maps.Overworld,5,19,209,MapTileType.Regular],		//209
		[Maps.Overworld,6,19,210,MapTileType.Regular],		//210
		[Maps.Overworld,7,19,211,MapTileType.Regular],		//211
		[Maps.Overworld,8,19,212,MapTileType.Regular],		//212
		[Maps.Overworld,9,19,213,MapTileType.Regular],		//213
		[Maps.Overworld,10,19,214,MapTileType.Regular],		//214
		[Maps.Overworld,15,19,215,MapTileType.Regular],		//215
		[Maps.Overworld,16,19,216,MapTileType.Regular],		//216
		[Maps.Overworld,17,19,217,MapTileType.Regular],		//217
		[Maps.Overworld,18,19,218,MapTileType.Regular],		//218
		[Maps.Overworld,19,19,219,MapTileType.Regular],		//219
		[Maps.Overworld,20,19,220,MapTileType.Regular],		//220
		[Maps.Overworld,21,19,221,MapTileType.Regular],		//221
		[Maps.Overworld,4,20,222,MapTileType.Regular],		//222
		[Maps.Overworld,5,20,223,MapTileType.Regular],		//223
		[Maps.Overworld,6,20,224,MapTileType.Regular],		//224
		[Maps.Overworld,7,20,225,MapTileType.Regular],		//225
		[Maps.Overworld,8,20,226,MapTileType.Regular],		//226
		[Maps.Overworld,9,20,227,MapTileType.Regular],		//227
		[Maps.Overworld,12,20,227,MapTileType.Regular],		//228
		[Maps.Overworld,15,20,229,MapTileType.Regular],		//229
		[Maps.Overworld,4,21,230,MapTileType.Regular],		//230
		[Maps.Overworld,5,21,231,MapTileType.Regular],		//231
		[Maps.Overworld,6,21,232,MapTileType.Regular],		//232
		[Maps.Overworld,7,21,233,MapTileType.Regular],		//233
		[Maps.Overworld,8,21,234,MapTileType.Regular],		//234
		[Maps.Overworld,9,21,235,MapTileType.Regular],		//235
		[Maps.Overworld,10,21,235,MapTileType.Regular],		//236
		[Maps.Overworld,14,21,237,MapTileType.Regular],		//237
		[Maps.Overworld,15,21,238,MapTileType.Regular],		//238
		[Maps.Overworld,4,22,239,MapTileType.Regular],		//239
		[Maps.Overworld,5,22,240,MapTileType.Regular],		//240
		[Maps.Overworld,6,22,241,MapTileType.Regular],		//241
		[Maps.Overworld,7,22,242,MapTileType.Regular],		//242
		[Maps.Overworld,8,22,243,MapTileType.Regular],		//243
		[Maps.Overworld,9,22,244,MapTileType.Regular],		//244
		[Maps.Overworld,14,22,245,MapTileType.Regular],		//245
		[Maps.Overworld,3,23,246,MapTileType.Regular],		//246
		[Maps.Overworld,4,23,247,MapTileType.Regular],		//247
		[Maps.Overworld,5,23,248,MapTileType.Regular],		//248
		[Maps.Overworld,6,23,249,MapTileType.Regular],		//249
		[Maps.Overworld,7,23,250,MapTileType.Regular],		//250
		[Maps.Overworld,8,23,251,MapTileType.Regular],		//251
		[Maps.Overworld,9,23,252,MapTileType.Regular],		//252
		[Maps.Overworld,12,23,260,MapTileType.Regular],		//253
		[Maps.Overworld,14,23,254,MapTileType.Regular],		//254
		[Maps.Overworld,5,24,255,MapTileType.Regular],		//255
		[Maps.Overworld,6,24,256,MapTileType.Regular],		//256
		[Maps.Overworld,7,24,257,MapTileType.Regular],		//257
		[Maps.Overworld,8,24,258,MapTileType.Regular],		//258
		[Maps.Overworld,9,24,259,MapTileType.Regular],		//259
		[Maps.Overworld,12,24,260,MapTileType.Regular],		//260
		[Maps.Overworld,13,24,261,MapTileType.Regular],		//261
		[Maps.Overworld,14,24,262,MapTileType.Regular],		//262
		[Maps.Overworld,5,25,263,MapTileType.Regular],		//263
		[Maps.Overworld,6,25,264,MapTileType.Regular],		//264
		[Maps.Overworld,7,25,265,MapTileType.Regular],		//265
		[Maps.Overworld,8,25,266,MapTileType.Regular],		//266
		[Maps.Overworld,9,25,267,MapTileType.Regular],		//267
		[Maps.Overworld,11,25,273,MapTileType.Regular],		//268
		[Maps.Overworld,12,25,269,MapTileType.Regular],		//269
		[Maps.Overworld,5,26,270,MapTileType.Regular],		//270
		[Maps.Overworld,6,26,271,MapTileType.Regular],		//271
		[Maps.Overworld,7,26,272,MapTileType.Regular],		//272
		[Maps.Overworld,11,26,273,MapTileType.Regular],		//273
		[Maps.Overworld,12,26,274,MapTileType.Regular],		//274
		[Maps.Overworld,5,27,275,MapTileType.Regular],		//275
		[Maps.Overworld,6,27,276,MapTileType.Regular],		//276
		[Maps.Overworld,7,27,277,MapTileType.Regular],		//277
		[Maps.Overworld,10,27,278,MapTileType.Regular],		//278
		[Maps.Overworld,11,27,279,MapTileType.Regular],		//279
		[Maps.Overworld,12,27,280,MapTileType.Regular],		//280
		[Maps.Overworld,13,27,281,MapTileType.Regular],		//281
		[Maps.Overworld,14,27,282,MapTileType.Regular],		//282
		[Maps.Overworld,15,27,283,MapTileType.Regular],		//283
		[Maps.Overworld,16,27,284,MapTileType.Regular],		//284
		[Maps.Overworld,17,27,285,MapTileType.Regular],		//285
		[Maps.Overworld,6,28,286,MapTileType.Regular],		//286
		[Maps.Overworld,7,28,287,MapTileType.Regular],		//287
		[Maps.Overworld,16,28,288,MapTileType.Regular],		//288
		[Maps.Overworld,17,28,289,MapTileType.Regular],		//289
		[Maps.Overworld,6,29,290,MapTileType.Regular],		//290
		[Maps.Overworld,6,30,291,MapTileType.Regular],		//291
		[Maps.Overworld,6,31,292,MapTileType.Regular],		//292
		[Maps.Overworld,7,31,292,MapTileType.Regular],		//293
	//Shrine 1 (Earth)
		[Maps.Shrine1,12,29,294,MapTileType.SignRoom],		//294
		[Maps.Shrine1,12,30,295,MapTileType.Regular],		//295
		[Maps.Shrine1,10,31,296,MapTileType.Regular],		//296
		[Maps.Shrine1,11,31,297,MapTileType.Regular],		//297
		[Maps.Shrine1,12,31,298,MapTileType.Regular],		//298
		[Maps.Shrine1,9,32,	299,MapTileType.Regular],		//299
		[Maps.Shrine1,10,32,300,MapTileType.Regular],		//300
		[Maps.Shrine1,9,33,	301,MapTileType.Regular],		//301
		[Maps.Shrine1,11,33,302,MapTileType.Regular],		//302
		[Maps.Shrine1,9,34,	303,MapTileType.Regular],		//303
		[Maps.Shrine1,6,35,	304,MapTileType.Regular],		//304
		[Maps.Shrine1,7,35,	305,MapTileType.Regular],		//305
		[Maps.Shrine1,8,35,	306,MapTileType.Regular],		//306
		[Maps.Shrine1,9,35,	307,MapTileType.Regular],		//307
		[Maps.Shrine1,10,35,308,MapTileType.Regular],		//308
		[Maps.Shrine1,11,35,309,MapTileType.Regular],		//309
		[Maps.Shrine1,12,35,310,MapTileType.Regular],		//310
		[Maps.Shrine1,9,36,	311,MapTileType.Regular],		//311
		[Maps.Shrine1,9,37,	312,MapTileType.Regular],		//312
		[Maps.Shrine1,10,37,313,MapTileType.Regular],		//313
		[Maps.Shrine1,10,38,314,MapTileType.Regular],		//314
		[Maps.Shrine1,11,38,315,MapTileType.Regular],		//315
	//Shrine 2 (Illusion)
		[Maps.Shrine2,27,18,316,MapTileType.SignRoom],		//316
		[Maps.Shrine2,27,19,317,MapTileType.Regular],		//317
		[Maps.Shrine2,24,20,318,MapTileType.Regular],		//318
		[Maps.Shrine2,25,20,319,MapTileType.Regular],		//319
		[Maps.Shrine2,26,20,320,MapTileType.Regular],		//320
		[Maps.Shrine2,27,20,321,MapTileType.Regular],		//321
		[Maps.Shrine2,20,21,322,MapTileType.Regular],		//322
		[Maps.Shrine2,21,21,323,MapTileType.Regular],		//323
		[Maps.Shrine2,22,21,324,MapTileType.Regular],		//324
		[Maps.Shrine2,23,21,325,MapTileType.Regular],		//325
		[Maps.Shrine2,24,21,326,MapTileType.Regular],		//326
		[Maps.Shrine2,20,22,327,MapTileType.Regular],		//327
		[Maps.Shrine2,21,22,328,MapTileType.Regular],		//328
		[Maps.Shrine2,23,22,329,MapTileType.Regular],		//329
		[Maps.Shrine2,24,22,330,MapTileType.Regular],		//330
		[Maps.Shrine2,20,23,331,MapTileType.Regular],		//331
		[Maps.Shrine2,21,23,332,MapTileType.Regular],		//332
		[Maps.Shrine2,18,24,333,MapTileType.Regular],		//333
		[Maps.Shrine2,19,24,334,MapTileType.Regular],		//334
		[Maps.Shrine2,20,24,335,MapTileType.Regular],		//335
		[Maps.Shrine2,18,25,336,MapTileType.Regular],		//336
		[Maps.Shrine2,19,25,337,MapTileType.Regular],		//337
		[Maps.Shrine2,18,26,338,MapTileType.Regular],		//338
		[Maps.Shrine2,19,26,339,MapTileType.Regular],		//339
		[Maps.Shrine2,19,27,340,MapTileType.Regular],		//340
	//Shrine 3 (Air)	
		[Maps.Shrine3,6,0,341,MapTileType.Regular],			//341
		[Maps.Shrine3,7,0,342,MapTileType.Regular],			//342
		[Maps.Shrine3,8,0,343,MapTileType.Regular],			//343
		[Maps.Shrine3,9,0,344,MapTileType.Regular],			//344
		[Maps.Shrine3,10,0,345,MapTileType.Regular],		//345
		[Maps.Shrine3,5,1,346,MapTileType.Regular],			//346
		[Maps.Shrine3,6,1,347,MapTileType.Regular],			//347
		[Maps.Shrine3,10,1,348,MapTileType.Regular],		//348
		[Maps.Shrine3,5,2,349,MapTileType.Regular],			//349
		[Maps.Shrine3,6,2,350,MapTileType.SignRoom],		//350
		[Maps.Shrine3,9,2,351,MapTileType.Regular],			//351
		[Maps.Shrine3,10,2,352,MapTileType.Regular],		//352
		[Maps.Shrine3,6,3,353,MapTileType.Regular],			//353
		[Maps.Shrine3,9,3,354,MapTileType.Regular],			//354
		[Maps.Shrine3,6,4,355,MapTileType.Regular],			//355
		[Maps.Shrine3,7,4,356,MapTileType.Regular],			//356
		[Maps.Shrine3,8,4,357,MapTileType.Regular],			//357
		[Maps.Shrine3,8,5,358,MapTileType.Regular],			//358
		[Maps.Shrine3,8,6,359,MapTileType.Regular],			//359
		[Maps.Shrine3,9,6,360,MapTileType.Regular],			//360
		[Maps.Shrine3,8,7,361,MapTileType.Regular],			//361
		[Maps.Shrine3,9,7,362,MapTileType.Regular],			//362
	//Shrine 4 (Destiny)
		[Maps.Shrine4,26,22,363,MapTileType.Regular],		//363
		[Maps.Shrine4,23,23,364,MapTileType.Regular],		//364
		[Maps.Shrine4,23,24,365,MapTileType.Regular],		//365
		[Maps.Shrine4,24,24,366,MapTileType.Regular],		//366
		[Maps.Shrine4,25,24,367,MapTileType.Regular],		//367
		[Maps.Shrine4,26,24,368,MapTileType.Regular],		//368
		[Maps.Shrine4,23,25,369,MapTileType.Regular],		//369
		[Maps.Shrine4,21,26,370,MapTileType.Regular],		//370
		[Maps.Shrine4,22,26,371,MapTileType.Regular],		//371
		[Maps.Shrine4,23,26,372,MapTileType.Regular],		//372
		[Maps.Shrine4,21,27,373,MapTileType.Regular],		//373
		[Maps.Shrine4,23,27,374,MapTileType.Regular],		//374
		[Maps.Shrine4,24,27,375,MapTileType.Regular],		//375
		[Maps.Shrine4,21,28,376,MapTileType.Regular],		//376
		[Maps.Shrine4,22,28,377,MapTileType.Regular],		//377
		[Maps.Shrine4,23,28,378,MapTileType.Regular],		//378
		[Maps.Shrine4,24,28,379,MapTileType.Regular],		//379
		[Maps.Shrine4,25,28,380,MapTileType.Regular],		//380
		[Maps.Shrine4,26,28,381,MapTileType.Regular],		//381
		[Maps.Shrine4,27,28,382,MapTileType.Regular],		//382
		[Maps.Shrine4,28,28,383,MapTileType.SignRoom],		//383
	//Shrine 5 (Water)
		[Maps.Shrine5,14,30,384,MapTileType.Regular],		//384
		[Maps.Shrine5,15,30,385,MapTileType.Regular],		//385
		[Maps.Shrine5,16,30,386,MapTileType.Regular],		//386
		[Maps.Shrine5,16,31,387,MapTileType.Regular],		//387
		[Maps.Shrine5,15,32,388,MapTileType.Regular],		//388
		[Maps.Shrine5,16,32,389,MapTileType.Regular],		//389
		[Maps.Shrine5,15,33,390,MapTileType.Regular],		//390
		[Maps.Shrine5,20,33,391,MapTileType.Regular],		//391
		[Maps.Shrine5,21,33,392,MapTileType.Regular],		//392
		[Maps.Shrine5,22,33,393,MapTileType.Regular],		//393
		[Maps.Shrine5,15,34,394,MapTileType.Regular],		//394
		[Maps.Shrine5,16,34,395,MapTileType.Regular],		//395
		[Maps.Shrine5,17,34,396,MapTileType.Regular],		//396
		[Maps.Shrine5,19,34,397,MapTileType.Regular],		//397
		[Maps.Shrine5,20,34,398,MapTileType.Regular],		//398
		[Maps.Shrine5,22,34,399,MapTileType.Regular],		//399
		[Maps.Shrine5,23,34,400,MapTileType.Regular],		//400
		[Maps.Shrine5,24,34,401,MapTileType.Regular],		//401
		[Maps.Shrine5,17,35,402,MapTileType.Regular],		//402
		[Maps.Shrine5,18,35,403,MapTileType.Regular],		//403
		[Maps.Shrine5,19,35,404,MapTileType.Regular],		//404
		[Maps.Shrine5,24,35,405,MapTileType.Regular],		//405
		[Maps.Shrine5,25,35,406,MapTileType.Regular],		//406
		[Maps.Shrine5,26,35,407,MapTileType.SignRoom],		//407
		[Maps.Shrine5,18,36,408,MapTileType.Regular],		//408
		[Maps.Shrine5,19,36,409,MapTileType.Regular],		//409
	//Shrine 6 (Strength)
		[Maps.Shrine6,21,37,410,MapTileType.SignRoom],		//410
		[Maps.Shrine6,22,37,411,MapTileType.Regular],		//411
		[Maps.Shrine6,23,37,412,MapTileType.Regular],		//412
		[Maps.Shrine6,24,37,413,MapTileType.Regular],		//413
		[Maps.Shrine6,25,37,414,MapTileType.Regular],		//414
		[Maps.Shrine6,25,38,415,MapTileType.Regular],		//415
		[Maps.Shrine6,26,38,416,MapTileType.Regular],		//416
		[Maps.Shrine6,26,39,417,MapTileType.Regular],		//417
		[Maps.Shrine6,27,39,418,MapTileType.Regular],		//418
		[Maps.Shrine6,15,40,419,MapTileType.Regular],		//419
		[Maps.Shrine6,16,40,420,MapTileType.Regular],		//420
		[Maps.Shrine6,26,40,421,MapTileType.Regular],		//421
		[Maps.Shrine6,27,40,422,MapTileType.Regular],		//422
		[Maps.Shrine6,15,41,423,MapTileType.Regular],		//423
		[Maps.Shrine6,16,41,424,MapTileType.Regular],		//424
		[Maps.Shrine6,17,41,425,MapTileType.Regular],		//425
		[Maps.Shrine6,18,41,426,MapTileType.Regular],		//426
		[Maps.Shrine6,25,41,427,MapTileType.Regular],		//427
		[Maps.Shrine6,26,41,428,MapTileType.Regular],		//428
		[Maps.Shrine6,18,42,429,MapTileType.Regular],		//429
		[Maps.Shrine6,24,42,430,MapTileType.Regular],		//430
		[Maps.Shrine6,25,42,431,MapTileType.Regular],		//431
		[Maps.Shrine6,18,43,432,MapTileType.Regular],		//432
		[Maps.Shrine6,19,43,433,MapTileType.Regular],		//433
		[Maps.Shrine6,20,43,434,MapTileType.Regular],		//434
		[Maps.Shrine6,21,43,435,MapTileType.Regular],		//435
		[Maps.Shrine6,22,43,436,MapTileType.Regular],		//436
		[Maps.Shrine6,23,43,437,MapTileType.Regular],		//437
		[Maps.Shrine6,24,43,438,MapTileType.Regular],		//438
	//Shrine 7 (Fire)
		[Maps.Shrine7,6,37,439,MapTileType.SignRoom],		//439
		[Maps.Shrine7,2,38,440,MapTileType.Regular],		//440
		[Maps.Shrine7,3,38,441,MapTileType.Regular],		//441
		[Maps.Shrine7,4,38,442,MapTileType.Regular],		//442
		[Maps.Shrine7,6,38,443,MapTileType.Regular],		//443
		[Maps.Shrine7,7,38,444,MapTileType.Regular],		//444
		[Maps.Shrine7,2,39,445,MapTileType.Regular],		//445
		[Maps.Shrine7,4,39,446,MapTileType.Regular],		//446
		[Maps.Shrine7,7,39,447,MapTileType.Regular],		//447
		[Maps.Shrine7,2,40,448,MapTileType.Regular],		//448
		[Maps.Shrine7,4,40,449,MapTileType.Regular],		//449
		[Maps.Shrine7,5,40,450,MapTileType.Regular],		//450
		[Maps.Shrine7,7,40,451,MapTileType.Regular],		//451
		[Maps.Shrine7,8,40,452,MapTileType.Regular],		//452
		[Maps.Shrine7,1,41,453,MapTileType.Regular],		//453
		[Maps.Shrine7,2,41,454,MapTileType.Regular],		//454
		[Maps.Shrine7,5,41,455,MapTileType.Regular],		//455
		[Maps.Shrine7,6,41,456,MapTileType.Regular],		//456
		[Maps.Shrine7,7,41,457,MapTileType.Regular],		//457
		[Maps.Shrine7,8,41,458,MapTileType.Regular],		//458
		[Maps.Shrine7,1,42,459,MapTileType.Regular],		//459
		[Maps.Shrine7,2,42,460,MapTileType.Regular],		//460
		[Maps.Shrine7,3,42,461,MapTileType.Regular],		//461
		[Maps.Shrine7,3,43,462,MapTileType.Regular],		//462
	//Ganon's Gauntlet
		[Maps.Gauntlet,0,16,463,MapTileType.Regular],		//463
		[Maps.Gauntlet,1,16,464,MapTileType.Regular],		//464
		[Maps.Gauntlet,2,16,465,MapTileType.Regular],		//465
		[Maps.Gauntlet,3,16,466,MapTileType.Regular],		//466
		[Maps.Gauntlet,4,16,467,MapTileType.Regular],		//467
		[Maps.Gauntlet,5,16,468,MapTileType.Regular],		//468
		[Maps.Gauntlet,6,16,469,MapTileType.Regular],		//469
		[Maps.Gauntlet,7,16,470,MapTileType.Regular],		//470
	]
}