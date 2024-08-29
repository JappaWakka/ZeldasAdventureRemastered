function WorldMap_Add_VisitedTile(TileX, TileY)
{
	for (var i = 0; i <= array_length(global.WorldMap_Tiles)-1; i++)
	{
		if global.WorldMap_Tiles[i][1] = TileX and global.WorldMap_Tiles[i][2] = TileY
		{
			if WorldMap_HasVisitedTile(global.WorldMap_Tiles[i][3]) = false
			{
				ds_list_add(global.VisitedTiles,global.WorldMap_Tiles[i][3])
			}
		}
	}
}

function WorldMap_HasVisitedTile(TileID)
{
	if ds_list_find_index(global.VisitedTiles,TileID) != -1
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

function WorldMap_GetMapID(TileID)
{
	return global.WorldMap_Tiles[TileID][0]
}

function WorldMap_UpdateVisitedTiles(IDArray)
{
	for (var i = 0; i <= array_length(IDArray)-1; i++)
	{
		if IDArray[i] != "" and WorldMap_HasVisitedTile(IDArray[i]) = false
		{	
			ds_list_add(global.VisitedTiles,IDArray[i])
		}
			
	}
}
function WorldMap_GetPositionOnMap(TileID)
{
	return [global.WorldMap_Tiles[TileID][5],global.WorldMap_Tiles[TileID][6]]
}

function WorldMap_GetTileType(TileID)
{
	return global.WorldMap_Tiles[TileID][4]
}

//[MapID,TileX,TileY,TileID,TileType,MapX,MapY]
function WorldMap_Tiles_Init()
{
	global.WorldMap_Tiles =
	[
	//Overworld
		//MapID				,TileX	,TileY	,TileID		,TileType					,MapX	,MapY
		[Maps.Overworld		,25		,0		,0			,MapTileType.Regular		,25		,0		],	//0
		[Maps.Overworld		,25		,1		,1			,MapTileType.Regular		,25		,1		],	//1
		[Maps.Overworld		,24		,2		,2			,MapTileType.Regular		,24		,2		],	//2
		[Maps.Overworld		,25		,2		,3			,MapTileType.Regular		,25		,2		],	//3
		[Maps.Overworld		,24		,3		,4			,MapTileType.Regular		,24		,3		],	//4
		[Maps.Overworld		,25		,3		,5			,MapTileType.Regular		,25		,3		],	//5
		[Maps.Overworld		,17		,4		,6			,MapTileType.Regular		,17		,4		],	//6
		[Maps.Overworld		,18		,4		,7			,MapTileType.Regular		,18		,4		],	//7
		[Maps.Overworld		,20		,4		,16			,MapTileType.Regular		,-1		,-1		],	//8
		[Maps.Overworld		,21		,4		,9			,MapTileType.Regular		,21		,4		],	//9
		[Maps.Overworld		,22		,4		,10			,MapTileType.Regular		,22		,4		],	//10
		[Maps.Overworld		,23		,4		,11			,MapTileType.Regular		,23		,4		],	//11
		[Maps.Overworld		,24		,4		,12			,MapTileType.Regular		,24		,4		],	//12
		[Maps.Overworld		,25		,4		,13			,MapTileType.Regular		,25		,4		],	//13
		[Maps.Overworld		,17		,5		,14			,MapTileType.Regular		,17		,5		],	//14
		[Maps.Overworld		,18		,5		,15			,MapTileType.Regular		,18		,5		],	//15
		[Maps.Overworld		,19		,5		,16			,MapTileType.Regular		,19		,5		],	//16
		[Maps.Overworld		,21		,5		,17			,MapTileType.Regular		,21		,5		],	//17
		[Maps.Overworld		,22		,5		,18			,MapTileType.Regular		,22		,5		],	//18
		[Maps.Overworld		,23		,5		,19			,MapTileType.Regular		,23		,5		],	//19
		[Maps.Overworld		,24		,5		,20			,MapTileType.Regular		,24		,5		],	//20
		[Maps.Overworld		,25		,5		,21			,MapTileType.Regular		,25		,5		],	//21
		[Maps.Overworld		,0		,6		,22			,MapTileType.Regular		,0		,6		],	//22
		[Maps.Overworld		,1		,6		,23			,MapTileType.Regular		,1		,6		],	//23
		[Maps.Overworld		,2		,6		,24			,MapTileType.Regular		,2		,6		],	//24
		[Maps.Overworld		,3		,6		,25			,MapTileType.Regular		,3		,6		],	//25
		[Maps.Overworld		,4		,6		,26			,MapTileType.Regular		,4		,6		],	//26
		[Maps.Overworld		,5		,6		,27			,MapTileType.Regular		,5		,6		],	//27
		[Maps.Overworld		,13		,6		,90			,MapTileType.Regular		,-1		,-1		],	//28
		[Maps.Overworld		,17		,6		,29			,MapTileType.Regular		,17		,6		],	//29
		[Maps.Overworld		,18		,6		,30			,MapTileType.Regular		,18		,6		],	//30
		[Maps.Overworld		,21		,6		,31			,MapTileType.Regular		,21		,6		],	//31
		[Maps.Overworld		,22		,6		,32			,MapTileType.Regular		,22		,6		],	//32
		[Maps.Overworld		,23		,6		,33			,MapTileType.Regular		,23		,6		],	//33
		[Maps.Overworld		,0		,7		,34			,MapTileType.Regular		,0		,7		],	//34
		[Maps.Overworld		,1		,7		,35			,MapTileType.Regular		,1		,7		],	//35
		[Maps.Overworld		,2		,7		,36			,MapTileType.Regular		,2		,7		],	//36
		[Maps.Overworld		,3		,7		,37			,MapTileType.Regular		,3		,7		],	//37
		[Maps.Overworld		,4		,7		,38			,MapTileType.Regular		,4		,7		],	//38
		[Maps.Overworld		,5		,7		,39			,MapTileType.Regular		,5		,7		],	//39
		[Maps.Overworld		,11		,7		,40			,MapTileType.Regular		,11		,7		],	//40
		[Maps.Overworld		,12		,7		,41			,MapTileType.Regular		,12		,7		],	//41
		[Maps.Overworld		,13		,7		,42			,MapTileType.Regular		,13		,7		],	//42
		[Maps.Overworld		,14		,7		,43			,MapTileType.Regular		,14		,7		],	//43
		[Maps.Overworld		,15		,7		,44			,MapTileType.Regular		,15		,7		],	//44
		[Maps.Overworld		,16		,7		,45			,MapTileType.Regular		,16		,7		],	//45
		[Maps.Overworld		,17		,7		,46			,MapTileType.Regular		,17		,7		],	//46
		[Maps.Overworld		,18		,7		,47			,MapTileType.Regular		,18		,7		],	//47
		[Maps.Overworld		,19		,7		,48			,MapTileType.Regular		,19		,7		],	//48
		[Maps.Overworld		,21		,7		,49			,MapTileType.Regular		,21		,7		],	//49
		[Maps.Overworld		,22		,7		,50			,MapTileType.Regular		,22		,7		],	//50
		[Maps.Overworld		,23		,7		,51			,MapTileType.Regular		,23		,7		],	//51
		[Maps.Overworld		,4		,8		,52			,MapTileType.Regular		,4		,8		],	//52
		[Maps.Overworld		,5		,8		,53			,MapTileType.Regular		,5		,8		],	//53
		[Maps.Overworld		,6		,8		,54			,MapTileType.Regular		,6		,8		],	//54
		[Maps.Overworld		,7		,8		,55			,MapTileType.Regular		,7		,8		],	//55
		[Maps.Overworld		,11		,8		,56			,MapTileType.Regular		,11		,8		],	//56
		[Maps.Overworld		,12		,8		,57			,MapTileType.Regular		,12		,8		],	//57
		[Maps.Overworld		,13		,8		,58			,MapTileType.Regular		,13		,8		],	//58
		[Maps.Overworld		,14		,8		,59			,MapTileType.Regular		,14		,8		],	//59
		[Maps.Overworld		,15		,8		,60			,MapTileType.Regular		,15		,8		],	//60
		[Maps.Overworld		,16		,8		,61			,MapTileType.Regular		,16		,8		],	//61
		[Maps.Overworld		,17		,8		,62			,MapTileType.Regular		,17		,8		],	//62
		[Maps.Overworld		,21		,8		,63			,MapTileType.Regular		,21		,8		],	//63
		[Maps.Overworld		,22		,8		,64			,MapTileType.Regular		,22		,8		],	//64
		[Maps.Overworld		,23		,8		,65			,MapTileType.Regular		,23		,8		],	//65
		[Maps.Overworld		,4		,9		,66			,MapTileType.Regular		,4		,9		],	//66
		[Maps.Overworld		,5		,9		,67			,MapTileType.Regular		,5		,9		],	//67
		[Maps.Overworld		,6		,9		,68			,MapTileType.Regular		,6		,9		],	//68
		[Maps.Overworld		,7		,9		,69			,MapTileType.Regular		,7		,9		],	//69
		[Maps.Overworld		,8		,9		,70			,MapTileType.Regular		,8		,9		],	//70
		[Maps.Overworld		,9		,9		,71			,MapTileType.Regular		,9		,9		],	//71
		[Maps.Overworld		,10		,9		,72			,MapTileType.Regular		,10		,9		],	//72
		[Maps.Overworld		,11		,9		,73			,MapTileType.Regular		,11		,9		],	//73
		[Maps.Overworld		,12		,9		,74			,MapTileType.Regular		,12		,9		],	//74
		[Maps.Overworld		,13		,9		,75			,MapTileType.Regular		,13		,9		],	//75
		[Maps.Overworld		,14		,9		,76			,MapTileType.Regular		,14		,9		],	//76
		[Maps.Overworld		,15		,9		,77			,MapTileType.Regular		,15		,9		],	//77
		[Maps.Overworld		,16		,9		,78			,MapTileType.Regular		,16		,9		],	//78
		[Maps.Overworld		,17		,9		,79			,MapTileType.Regular		,17		,9		],	//79
		[Maps.Overworld		,21		,9		,80			,MapTileType.Regular		,21		,9		],	//80
		[Maps.Overworld		,22		,9		,81			,MapTileType.Regular		,22		,9		],	//81
		[Maps.Overworld		,23		,9		,82			,MapTileType.Regular		,23		,9		],	//82
		[Maps.Overworld		,6		,10		,83			,MapTileType.Regular		,6		,10		],	//83
		[Maps.Overworld		,7		,10		,84			,MapTileType.Regular		,7		,10		],	//84
		[Maps.Overworld		,8		,10		,85			,MapTileType.Regular		,8		,10		],	//85
		[Maps.Overworld		,9		,10		,86			,MapTileType.Regular		,9		,10		],	//86
		[Maps.Overworld		,10		,10		,87			,MapTileType.Regular		,10		,10		],	//87
		[Maps.Overworld		,11		,10		,88			,MapTileType.Regular		,11		,10		],	//88
		[Maps.Overworld		,12		,10		,89			,MapTileType.Regular		,12		,10		],	//89
		[Maps.Overworld		,13		,10		,90			,MapTileType.Regular		,13		,10		],	//90
		[Maps.Overworld		,14		,10		,91			,MapTileType.Regular		,14		,10		],	//91
		[Maps.Overworld		,15		,10		,92			,MapTileType.Regular		,15		,10		],	//92
		[Maps.Overworld		,16		,10		,91			,MapTileType.Regular		,-1		,-1		],	//93
		[Maps.Overworld		,21		,10		,94			,MapTileType.Regular		,21		,10		],	//94
		[Maps.Overworld		,22		,10		,95			,MapTileType.Regular		,22		,10		],	//95
		[Maps.Overworld		,23		,10		,96			,MapTileType.Regular		,23		,10		],	//96
		[Maps.Overworld		,7		,11		,110		,MapTileType.Regular		,-1		,-1		],	//97
		[Maps.Overworld		,8		,11		,110		,MapTileType.Regular		,-1		,-1		],	//98
		[Maps.Overworld		,9		,11		,111		,MapTileType.Regular		,-1		,-1		],	//99
		[Maps.Overworld		,10		,11		,100		,MapTileType.Regular		,10		,11		],	//100
		[Maps.Overworld		,11		,11		,101		,MapTileType.Regular		,11		,11		],	//101
		[Maps.Overworld		,12		,11		,102		,MapTileType.Regular		,12		,11		],	//102
		[Maps.Overworld		,13		,11		,103		,MapTileType.Regular		,13		,11		],	//103
		[Maps.Overworld		,14		,11		,104		,MapTileType.Regular		,14		,11		],	//104
		[Maps.Overworld		,15		,11		,105		,MapTileType.Regular		,15		,11		],	//105
		[Maps.Overworld		,21		,11		,106		,MapTileType.Regular		,21		,11		],	//106
		[Maps.Overworld		,22		,11		,107		,MapTileType.Regular		,22		,11		],	//107
		[Maps.Overworld		,23		,11		,108		,MapTileType.Regular		,23		,11		],	//108
		[Maps.Overworld		,9		,12		,121		,MapTileType.Regular		,-1		,-1		],	//109
		[Maps.Overworld		,10		,12		,110		,MapTileType.Regular		,10		,12		],	//110
		[Maps.Overworld		,11		,12		,111		,MapTileType.Regular		,11		,12		],	//111
		[Maps.Overworld		,12		,12		,112		,MapTileType.Regular		,12		,12		],	//112
		[Maps.Overworld		,13		,12		,113		,MapTileType.Regular		,13		,12		],	//113
		[Maps.Overworld		,14		,12		,114		,MapTileType.Regular		,14		,12		],	//114
		[Maps.Overworld		,15		,12		,115		,MapTileType.Regular		,15		,12		],	//115
		[Maps.Overworld		,16		,12		,116		,MapTileType.Regular		,16		,12		],	//116
		[Maps.Overworld		,22		,12		,117		,MapTileType.Regular		,22		,12		],	//117
		[Maps.Overworld		,25		,12		,118		,MapTileType.Regular		,25		,12		],	//118
		[Maps.Overworld		,10		,13		,119		,MapTileType.Regular		,10		,13		],	//119
		[Maps.Overworld		,11		,13		,120		,MapTileType.Regular		,11		,13		],	//120
		[Maps.Overworld		,12		,13		,121		,MapTileType.Regular		,12		,13		],	//121
		[Maps.Overworld		,13		,13		,122		,MapTileType.Regular		,13		,13		],	//122
		[Maps.Overworld		,14		,13		,123		,MapTileType.Regular		,14		,13		],	//123
		[Maps.Overworld		,15		,13		,124		,MapTileType.Regular		,15		,13		],	//124
		[Maps.Overworld		,16		,13		,125		,MapTileType.Regular		,16		,13		],	//125
		[Maps.Overworld		,19		,13		,126		,MapTileType.Regular		,19		,13		],	//126
		[Maps.Overworld		,20		,13		,127		,MapTileType.Regular		,20		,13		],	//127
		[Maps.Overworld		,21		,13		,128		,MapTileType.Regular		,21		,13		],	//128
		[Maps.Overworld		,22		,13		,129		,MapTileType.Regular		,22		,13		],	//129
		[Maps.Overworld		,23		,13		,130		,MapTileType.Regular		,23		,13		],	//130
		[Maps.Overworld		,24		,13		,131		,MapTileType.Regular		,24		,13		],	//131
		[Maps.Overworld		,25		,13		,132		,MapTileType.Regular		,25		,13		],	//132
		[Maps.Overworld		,9		,14		,133		,MapTileType.Regular		,9		,14		],	//133
		[Maps.Overworld		,10		,14		,134		,MapTileType.Regular		,10		,14		],	//134
		[Maps.Overworld		,11		,14		,135		,MapTileType.Regular		,11		,14		],	//135
		[Maps.Overworld		,12		,14		,136		,MapTileType.Regular		,12		,14		],	//136
		[Maps.Overworld		,13		,14		,137		,MapTileType.Regular		,13		,14		],	//137
		[Maps.Overworld		,14		,14		,138		,MapTileType.Regular		,14		,14		],	//138
		[Maps.Overworld		,15		,14		,139		,MapTileType.Regular		,15		,14		],	//139
		[Maps.Overworld		,16		,14		,140		,MapTileType.Regular		,16		,14		],	//140
		[Maps.Overworld		,17		,14		,141		,MapTileType.Regular		,17		,14		],	//141
		[Maps.Overworld		,18		,14		,142		,MapTileType.Regular		,18		,14		],	//142
		[Maps.Overworld		,19		,14		,143		,MapTileType.Regular		,19		,14		],	//143
		[Maps.Overworld		,20		,14		,144		,MapTileType.Regular		,20		,14		],	//144
		[Maps.Overworld		,21		,14		,145		,MapTileType.Regular		,21		,14		],	//145
		[Maps.Overworld		,22		,14		,146		,MapTileType.Regular		,22		,14		],	//146
		[Maps.Overworld		,23		,14		,147		,MapTileType.Regular		,23		,14		],	//147
		[Maps.Overworld		,24		,14		,148		,MapTileType.Regular		,24		,14		],	//148
		[Maps.Overworld		,25		,14		,149		,MapTileType.Regular		,25		,14		],	//149
		[Maps.Overworld		,26		,14		,150		,MapTileType.Regular		,26		,14		],	//150
		[Maps.Overworld		,9		,15		,151		,MapTileType.Regular		,9		,15		],	//151
		[Maps.Overworld		,10		,15		,152		,MapTileType.Regular		,10		,15		],	//152
		[Maps.Overworld		,11		,15		,153		,MapTileType.Regular		,11		,15		],	//153
		[Maps.Overworld		,12		,15		,154		,MapTileType.Regular		,12		,15		],	//154
		[Maps.Overworld		,13		,15		,155		,MapTileType.Regular		,13		,15		],	//155
		[Maps.Overworld		,14		,15		,156		,MapTileType.Regular		,14		,15		],	//156
		[Maps.Overworld		,15		,15		,157		,MapTileType.Regular		,15		,15		],	//157
		[Maps.Overworld		,16		,15		,158		,MapTileType.Regular		,16		,15		],	//158
		[Maps.Overworld		,17		,15		,159		,MapTileType.Regular		,17		,15		],	//159
		[Maps.Overworld		,18		,15		,160		,MapTileType.Regular		,18		,15		],	//160
		[Maps.Overworld		,19		,15		,161		,MapTileType.Regular		,19		,15		],	//161
		[Maps.Overworld		,20		,15		,162		,MapTileType.Regular		,20		,15		],	//162
		[Maps.Overworld		,21		,15		,163		,MapTileType.Regular		,21		,15		],	//163
		[Maps.Overworld		,22		,15		,164		,MapTileType.Regular		,22		,15		],	//164
		[Maps.Overworld		,23		,15		,165		,MapTileType.Regular		,23		,15		],	//165
		[Maps.Overworld		,24		,15		,166		,MapTileType.Regular		,24		,15		],	//166
		[Maps.Overworld		,25		,15		,167		,MapTileType.Regular		,25		,15		],	//167
		[Maps.Overworld		,26		,15		,168		,MapTileType.Regular		,26		,15		],	//168
		[Maps.Overworld		,9		,16		,169		,MapTileType.Regular		,9		,16		],	//169
		[Maps.Overworld		,10		,16		,170		,MapTileType.Regular		,10		,16		],	//170
		[Maps.Overworld		,11		,16		,171		,MapTileType.Regular		,11		,16		],	//171
		[Maps.Overworld		,12		,16		,172		,MapTileType.Regular		,12		,16		],	//172
		[Maps.Overworld		,13		,16		,173		,MapTileType.Regular		,13		,16		],	//173
		[Maps.Overworld		,14		,16		,174		,MapTileType.Regular		,14		,16		],	//174
		[Maps.Overworld		,16		,16		,175		,MapTileType.Regular		,16		,16		],	//175
		[Maps.Overworld		,17		,16		,176		,MapTileType.Regular		,17		,16		],	//176
		[Maps.Overworld		,18		,16		,177		,MapTileType.Regular		,18		,16		],	//177
		[Maps.Overworld		,19		,16		,178		,MapTileType.Regular		,19		,16		],	//178
		[Maps.Overworld		,20		,16		,179		,MapTileType.Regular		,20		,16		],	//179
		[Maps.Overworld		,21		,16		,180		,MapTileType.Regular		,21		,16		],	//180
		[Maps.Overworld		,22		,16		,163		,MapTileType.Regular		,-1		,-1		],	//181
		[Maps.Overworld		,24		,16		,182		,MapTileType.Regular		,24		,16		],	//182
		[Maps.Overworld		,25		,16		,183		,MapTileType.Regular		,25		,16		],	//183
		[Maps.Overworld		,26		,16		,184		,MapTileType.Regular		,26		,16		],	//184
		[Maps.Overworld		,27		,16		,185		,MapTileType.Regular		,27		,16		],	//185
		[Maps.Overworld		,28		,16		,186		,MapTileType.Regular		,28		,16		],	//186
		[Maps.Overworld		,10		,17		,187		,MapTileType.Regular		,10		,17		],	//187
		[Maps.Overworld		,11		,17		,188		,MapTileType.Regular		,11		,17		],	//188
		[Maps.Overworld		,12		,17		,189		,MapTileType.Regular		,12		,17		],	//189
		[Maps.Overworld		,13		,17		,190		,MapTileType.Regular		,13		,17		],	//190
		[Maps.Overworld		,16		,17		,191		,MapTileType.Regular		,16		,17		],	//191
		[Maps.Overworld		,17		,17		,192		,MapTileType.Regular		,17		,17		],	//192
		[Maps.Overworld		,18		,17		,193		,MapTileType.Regular		,18		,17		],	//193
		[Maps.Overworld		,19		,17		,194		,MapTileType.Regular		,19		,17		],	//194
		[Maps.Overworld		,20		,17		,195		,MapTileType.Regular		,20		,17		],	//195
		[Maps.Overworld		,21		,17		,196		,MapTileType.Regular		,21		,17		],	//196
		[Maps.Overworld		,28		,17		,197		,MapTileType.Regular		,28		,17		],	//197
		[Maps.Overworld		,10		,18		,198		,MapTileType.Regular		,10		,18		],	//198
		[Maps.Overworld		,11		,18		,199		,MapTileType.Regular		,11		,18		],	//199
		[Maps.Overworld		,12		,18		,200		,MapTileType.Regular		,12		,18		],	//200
		[Maps.Overworld		,15		,18		,215		,MapTileType.Regular		,-1		,-1		],	//201
		[Maps.Overworld		,16		,18		,202		,MapTileType.Regular		,16		,18		],	//202
		[Maps.Overworld		,17		,18		,203		,MapTileType.Regular		,17		,18		],	//203
		[Maps.Overworld		,18		,18		,204		,MapTileType.Regular		,18		,18		],	//204
		[Maps.Overworld		,19		,18		,205		,MapTileType.Regular		,19		,18		],	//205
		[Maps.Overworld		,20		,18		,206		,MapTileType.Regular		,20		,18		],	//206
		[Maps.Overworld		,21		,18		,207		,MapTileType.Regular		,21		,18		],	//207
		[Maps.Overworld		,4		,19		,208		,MapTileType.Regular		,4		,19		],	//208
		[Maps.Overworld		,5		,19		,209		,MapTileType.Regular		,5		,19		],	//209
		[Maps.Overworld		,6		,19		,210		,MapTileType.Regular		,6		,19		],	//210
		[Maps.Overworld		,7		,19		,211		,MapTileType.Regular		,7		,19		],	//211
		[Maps.Overworld		,8		,19		,212		,MapTileType.Regular		,8		,19		],	//212
		[Maps.Overworld		,9		,19		,213		,MapTileType.Regular		,9		,19		],	//213
		[Maps.Overworld		,10		,19		,214		,MapTileType.Regular		,10		,19		],	//214
		[Maps.Overworld		,15		,19		,215		,MapTileType.Regular		,15		,19		],	//215
		[Maps.Overworld		,16		,19		,216		,MapTileType.Regular		,16		,19		],	//216
		[Maps.Overworld		,17		,19		,217		,MapTileType.Regular		,17		,19		],	//217
		[Maps.Overworld		,18		,19		,218		,MapTileType.Regular		,18		,19		],	//218
		[Maps.Overworld		,19		,19		,219		,MapTileType.Regular		,19		,19		],	//219
		[Maps.Overworld		,20		,19		,220		,MapTileType.Regular		,20		,19		],	//220
		[Maps.Overworld		,21		,19		,221		,MapTileType.Regular		,21		,19		],	//221
		[Maps.Overworld		,4		,20		,222		,MapTileType.Regular		,4		,20		],	//222
		[Maps.Overworld		,5		,20		,223		,MapTileType.Regular		,5		,20		],	//223
		[Maps.Overworld		,6		,20		,224		,MapTileType.Regular		,6		,20		],	//224
		[Maps.Overworld		,7		,20		,225		,MapTileType.Regular		,7		,20		],	//225
		[Maps.Overworld		,8		,20		,226		,MapTileType.Regular		,8		,20		],	//226
		[Maps.Overworld		,9		,20		,227		,MapTileType.Regular		,9		,20		],	//227
		[Maps.Overworld		,12		,20		,227		,MapTileType.Regular		,-1		,-1		],	//228
		[Maps.Overworld		,15		,20		,229		,MapTileType.Regular		,15		,20		],	//229
		[Maps.Overworld		,4		,21		,230		,MapTileType.Regular		,4		,21		],	//230
		[Maps.Overworld		,5		,21		,231		,MapTileType.Regular		,5		,21		],	//231
		[Maps.Overworld		,6		,21		,232		,MapTileType.Regular		,6		,21		],	//232
		[Maps.Overworld		,7		,21		,233		,MapTileType.Regular		,7		,21		],	//233
		[Maps.Overworld		,8		,21		,234		,MapTileType.Regular		,8		,21		],	//234
		[Maps.Overworld		,9		,21		,235		,MapTileType.Regular		,9		,21		],	//235
		[Maps.Overworld		,10		,21		,235		,MapTileType.Regular		,-1		,-1		],	//236
		[Maps.Overworld		,14		,21		,237		,MapTileType.Regular		,14		,21		],	//237
		[Maps.Overworld		,15		,21		,238		,MapTileType.Regular		,15		,21		],	//238
		[Maps.Overworld		,4		,22		,239		,MapTileType.Regular		,4		,22		],	//239
		[Maps.Overworld		,5		,22		,240		,MapTileType.Regular		,5		,22		],	//240
		[Maps.Overworld		,6		,22		,241		,MapTileType.Regular		,6		,22		],	//241
		[Maps.Overworld		,7		,22		,242		,MapTileType.Regular		,7		,22		],	//242
		[Maps.Overworld		,8		,22		,243		,MapTileType.Regular		,8		,22		],	//243
		[Maps.Overworld		,9		,22		,244		,MapTileType.Regular		,9		,22		],	//244
		[Maps.Overworld		,14		,22		,245		,MapTileType.Regular		,14		,22		],	//245
		[Maps.Overworld		,3		,23		,246		,MapTileType.Regular		,3		,23		],	//246
		[Maps.Overworld		,4		,23		,247		,MapTileType.Regular		,4		,23		],	//247
		[Maps.Overworld		,5		,23		,248		,MapTileType.Regular		,5		,23		],	//248
		[Maps.Overworld		,6		,23		,249		,MapTileType.Regular		,6		,23		],	//249
		[Maps.Overworld		,7		,23		,250		,MapTileType.Regular		,7		,23		],	//250
		[Maps.Overworld		,8		,23		,251		,MapTileType.Regular		,8		,23		],	//251
		[Maps.Overworld		,9		,23		,252		,MapTileType.Regular		,9		,23		],	//252
		[Maps.Overworld		,12		,23		,260		,MapTileType.Regular		,-1		,-1		],	//253
		[Maps.Overworld		,14		,23		,254		,MapTileType.Regular		,14		,23		],	//254
		[Maps.Overworld		,5		,24		,255		,MapTileType.Regular		,5		,24		],	//255
		[Maps.Overworld		,6		,24		,256		,MapTileType.Regular		,6		,24		],	//256
		[Maps.Overworld		,7		,24		,257		,MapTileType.Regular		,7		,24		],	//257
		[Maps.Overworld		,8		,24		,258		,MapTileType.Regular		,8		,24		],	//258
		[Maps.Overworld		,9		,24		,259		,MapTileType.Regular		,9		,24		],	//259
		[Maps.Overworld		,12		,24		,260		,MapTileType.Regular		,12		,24		],	//260
		[Maps.Overworld		,13		,24		,261		,MapTileType.Regular		,13		,24		],	//261
		[Maps.Overworld		,14		,24		,262		,MapTileType.Regular		,14		,24		],	//262
		[Maps.Overworld		,5		,25		,263		,MapTileType.Regular		,5		,25		],	//263
		[Maps.Overworld		,6		,25		,264		,MapTileType.Regular		,6		,25		],	//264
		[Maps.Overworld		,7		,25		,265		,MapTileType.Regular		,7		,25		],	//265
		[Maps.Overworld		,8		,25		,266		,MapTileType.Regular		,8		,25		],	//266
		[Maps.Overworld		,9		,25		,267		,MapTileType.Regular		,9		,25		],	//267
		[Maps.Overworld		,11		,25		,273		,MapTileType.Regular		,-1		,-1		],	//268
		[Maps.Overworld		,12		,25		,269		,MapTileType.Regular		,12		,25		],	//269
		[Maps.Overworld		,5		,26		,270		,MapTileType.Regular		,5		,26		],	//270
		[Maps.Overworld		,6		,26		,271		,MapTileType.Regular		,6		,26		],	//271
		[Maps.Overworld		,7		,26		,272		,MapTileType.Regular		,7		,26		],	//272
		[Maps.Overworld		,11		,26		,273		,MapTileType.Regular		,11		,26		],	//273
		[Maps.Overworld		,12		,26		,274		,MapTileType.Regular		,12		,26		],	//274
		[Maps.Overworld		,5		,27		,275		,MapTileType.Regular		,5		,27		],	//275
		[Maps.Overworld		,6		,27		,276		,MapTileType.Regular		,6		,27		],	//276
		[Maps.Overworld		,7		,27		,277		,MapTileType.Regular		,7		,27		],	//277
		[Maps.Overworld		,10		,27		,278		,MapTileType.Regular		,10		,27		],	//278
		[Maps.Overworld		,11		,27		,279		,MapTileType.Regular		,11		,27		],	//279
		[Maps.Overworld		,12		,27		,280		,MapTileType.Regular		,12		,27		],	//280
		[Maps.Overworld		,13		,27		,281		,MapTileType.Regular		,13		,27		],	//281
		[Maps.Overworld		,14		,27		,282		,MapTileType.Regular		,14		,27		],	//282
		[Maps.Overworld		,15		,27		,283		,MapTileType.Regular		,15		,27		],	//283
		[Maps.Overworld		,16		,27		,284		,MapTileType.Regular		,16		,27		],	//284
		[Maps.Overworld		,17		,27		,285		,MapTileType.Regular		,17		,27		],	//285
		[Maps.Overworld		,6		,28		,286		,MapTileType.Regular		,6		,28		],	//286
		[Maps.Overworld		,7		,28		,287		,MapTileType.Regular		,7		,28		],	//287
		[Maps.Overworld		,16		,28		,288		,MapTileType.Regular		,16		,28		],	//288
		[Maps.Overworld		,17		,28		,289		,MapTileType.Regular		,17		,28		],	//289
		[Maps.Overworld		,6		,29		,290		,MapTileType.Regular		,6		,29		],	//290
		[Maps.Overworld		,6		,30		,291		,MapTileType.Regular		,6		,30		],	//291
		[Maps.Overworld		,6		,31		,292		,MapTileType.Regular		,6		,31		],	//292
		[Maps.Overworld		,7		,31		,293		,MapTileType.Regular		,7		,31		],	//293
	//Shrine 1 (Earth)
		//MapID				,TileX	,TileY	,TileID		,TileType					,MapX	,MapY
		[Maps.Shrine1		,12		,29		,294		,MapTileType.SignRoom		,18		,8		],	//294
		[Maps.Shrine1		,12		,30		,295		,MapTileType.Large			,18		,10		],	//295
		[Maps.Shrine1		,10		,31		,296		,MapTileType.Large			,14		,10		],	//296
		[Maps.Shrine1		,11		,31		,297		,MapTileType.Large			,16		,10		],	//297
		[Maps.Shrine1		,12		,31		,298		,MapTileType.Large			,18		,10		],	//298
		[Maps.Shrine1		,9		,32		,299		,MapTileType.Large			,12		,12		],	//299
		[Maps.Shrine1		,10		,32		,300		,MapTileType.Large			,14		,12		],	//300
		[Maps.Shrine1		,9		,33		,301		,MapTileType.Large			,12		,14		],	//301
		[Maps.Shrine1		,9		,34		,302		,MapTileType.Large			,12		,16		],	//302
		[Maps.Shrine1		,11		,34		,303		,MapTileType.Large			,16		,16		],	//303
		[Maps.Shrine1		,6		,35		,304		,MapTileType.Large			,6		,18		],	//304
		[Maps.Shrine1		,7		,35		,305		,MapTileType.Large			,8		,18		],	//305
		[Maps.Shrine1		,8		,35		,306		,MapTileType.Large			,10		,18		],	//306
		[Maps.Shrine1		,9		,35		,307		,MapTileType.Large			,12		,18		],	//307
		[Maps.Shrine1		,10		,35		,308		,MapTileType.Large			,14		,18		],	//308
		[Maps.Shrine1		,11		,35		,309		,MapTileType.Large			,16		,18		],	//309
		[Maps.Shrine1		,12		,35		,310		,MapTileType.Large			,18		,18		],	//310
		[Maps.Shrine1		,9		,36		,311		,MapTileType.Large			,12		,20		],	//311
		[Maps.Shrine1		,9		,37		,312		,MapTileType.Large			,12		,22		],	//312
		[Maps.Shrine1		,10		,37		,313		,MapTileType.Large			,14		,22		],	//313
		[Maps.Shrine1		,10		,38		,314		,MapTileType.Large			,14		,24		],	//314
		[Maps.Shrine1		,11		,38		,315		,MapTileType.Large			,16		,24		],	//315
	//Shrine 2 (Illusion)                                                               
		//MapID				,TileX	,TileY	,TileID		,TileType					,MapX	,MapY
		[Maps.Shrine2		,27		,18		,316		,MapTileType.SignRoom		,22		,6		],	//316
		[Maps.Shrine2		,27		,19		,317		,MapTileType.Large			,22		,8		],	//317
		[Maps.Shrine2		,24		,20		,318		,MapTileType.Large			,16		,10		],	//318
		[Maps.Shrine2		,25		,20		,319		,MapTileType.Large			,18		,10		],	//319
		[Maps.Shrine2		,26		,20		,320		,MapTileType.Large			,20		,10		],	//320
		[Maps.Shrine2		,27		,20		,321		,MapTileType.Large			,22		,10		],	//321
		[Maps.Shrine2		,20		,21		,322		,MapTileType.Large			,8		,12		],	//322
		[Maps.Shrine2		,21		,21		,323		,MapTileType.Large			,10		,12		],	//323
		[Maps.Shrine2		,22		,21		,324		,MapTileType.Large			,12		,12		],	//324
		[Maps.Shrine2		,23		,21		,325		,MapTileType.Large			,14		,12		],	//325
		[Maps.Shrine2		,24		,21		,326		,MapTileType.Large			,16		,12		],	//326
		[Maps.Shrine2		,20		,22		,327		,MapTileType.Large			,8		,14		],	//327
		[Maps.Shrine2		,21		,22		,328		,MapTileType.Large			,10		,14		],	//328
		[Maps.Shrine2		,23		,22		,329		,MapTileType.Large			,14		,14		],	//329
		[Maps.Shrine2		,24		,22		,330		,MapTileType.Large			,16		,14		],	//330
		[Maps.Shrine2		,20		,23		,331		,MapTileType.Large			,8		,16		],	//331
		[Maps.Shrine2		,21		,23		,332		,MapTileType.Large			,10		,16		],	//332
		[Maps.Shrine2		,18		,24		,333		,MapTileType.Large			,4		,18		],	//333
		[Maps.Shrine2		,19		,24		,334		,MapTileType.Large			,6		,18		],	//334
		[Maps.Shrine2		,20		,24		,335		,MapTileType.Large			,8		,18		],	//335
		[Maps.Shrine2		,18		,25		,336		,MapTileType.Large			,4		,20		],	//336
		[Maps.Shrine2		,19		,25		,337		,MapTileType.Large			,6		,20		],	//337
		[Maps.Shrine2		,18		,26		,338		,MapTileType.Large			,4		,22		],	//338
		[Maps.Shrine2		,19		,26		,339		,MapTileType.Large			,6		,22		],	//339
		[Maps.Shrine2		,19		,27		,340		,MapTileType.Large			,6		,24		],	//340
	//Shrine 3 (Air)	                                                                
		//MapID				,TileX	,TileY	,TileID		,TileType					,MapX	,MapY
		[Maps.Shrine3		,6		,0		,341		,MapTileType.Large			,10		,6		],	//341
		[Maps.Shrine3		,7		,0		,342		,MapTileType.Large			,12		,6		],	//342
		[Maps.Shrine3		,8		,0		,343		,MapTileType.Large			,14		,6		],	//343
		[Maps.Shrine3		,9		,0		,344		,MapTileType.Large			,16		,6		],	//344
		[Maps.Shrine3		,10		,0		,345		,MapTileType.Large			,18		,6		],	//345
		[Maps.Shrine3		,5		,1		,346		,MapTileType.Large			,8		,8		],	//346
		[Maps.Shrine3		,6		,1		,347		,MapTileType.Large			,10		,8		],	//347
		[Maps.Shrine3		,10		,1		,348		,MapTileType.Large			,18		,8		],	//348
		[Maps.Shrine3		,5		,2		,349		,MapTileType.Large			,8		,10		],	//349
		[Maps.Shrine3		,6		,2		,350		,MapTileType.SignRoom		,10		,12		],	//350
		[Maps.Shrine3		,9		,2		,351		,MapTileType.Large			,16		,10		],	//351
		[Maps.Shrine3		,10		,2		,352		,MapTileType.Large			,18		,10		],	//352
		[Maps.Shrine3		,6		,3		,353		,MapTileType.Large			,10		,14		],	//353
		[Maps.Shrine3		,9		,3		,354		,MapTileType.Large			,16		,12		],	//354
		[Maps.Shrine3		,6		,4		,355		,MapTileType.Large			,10		,16		],	//355
		[Maps.Shrine3		,7		,4		,356		,MapTileType.Large			,12		,16		],	//356
		[Maps.Shrine3		,8		,4		,357		,MapTileType.Large			,14		,16		],	//357
		[Maps.Shrine3		,8		,5		,358		,MapTileType.Large			,14		,18		],	//358
		[Maps.Shrine3		,8		,6		,359		,MapTileType.Large			,14		,20		],	//359
		[Maps.Shrine3		,9		,6		,360		,MapTileType.Large			,16		,20		],	//360
		[Maps.Shrine3		,8		,7		,361		,MapTileType.Large			,14		,22		],	//361
		[Maps.Shrine3		,9		,7		,362		,MapTileType.Large			,16		,22		],	//362
	//Shrine 4 (Destiny)                                                                
		//MapID				,TileX	,TileY	,TileID		,TileType					,MapX	,MapY
		[Maps.Shrine4		,26		,22		,363		,MapTileType.Large			,16		,8		],	//363
		[Maps.Shrine4		,26		,23		,364		,MapTileType.Large			,16		,10		],	//364
		[Maps.Shrine4		,23		,24		,365		,MapTileType.Large			,10		,12		],	//365
		[Maps.Shrine4		,24		,24		,366		,MapTileType.Large			,12		,12		],	//366
		[Maps.Shrine4		,25		,24		,367		,MapTileType.Large			,14		,12		],	//367
		[Maps.Shrine4		,26		,24		,368		,MapTileType.Large			,16		,12		],	//368
		[Maps.Shrine4		,23		,25		,369		,MapTileType.Large			,10		,14		],	//369
		[Maps.Shrine4		,21		,26		,370		,MapTileType.Large			,6		,16		],	//370
		[Maps.Shrine4		,22		,26		,371		,MapTileType.Large			,8		,16		],	//371
		[Maps.Shrine4		,23		,26		,372		,MapTileType.Large			,10		,16		],	//372
		[Maps.Shrine4		,21		,27		,373		,MapTileType.Large			,6		,18		],	//373
		[Maps.Shrine4		,23		,27		,374		,MapTileType.Large			,10		,18		],	//374
		[Maps.Shrine4		,24		,27		,375		,MapTileType.Large			,12		,18		],	//375
		[Maps.Shrine4		,21		,28		,376		,MapTileType.Large			,6 		,20		],	//376
		[Maps.Shrine4		,22		,28		,377		,MapTileType.Large			,8 		,20		],	//377
		[Maps.Shrine4		,23		,28		,378		,MapTileType.Large			,10		,20		],	//378
		[Maps.Shrine4		,24		,28		,379		,MapTileType.Large			,12		,20		],	//379
		[Maps.Shrine4		,25		,28		,380		,MapTileType.Large			,14		,20		],	//380
		[Maps.Shrine4		,26		,28		,381		,MapTileType.Large			,16		,20		],	//381
		[Maps.Shrine4		,27		,28		,382		,MapTileType.Large			,18		,20		],	//382
		[Maps.Shrine4		,28		,28		,383		,MapTileType.SignRoom		,20		,20		],	//383
	//Shrine 5 (Water)
		//MapID				,TileX	,TileY	,TileID		,TileType					,MapX	,MapY
		[Maps.Shrine5		,14		,30		,384		,MapTileType.Large			,6		,12		],	//384
		[Maps.Shrine5		,15		,30		,385		,MapTileType.Large			,8		,12		],	//385
		[Maps.Shrine5		,16		,30		,386		,MapTileType.Large			,10		,12		],	//386
		[Maps.Shrine5		,16		,31		,387		,MapTileType.Large			,10		,14		],	//387
		[Maps.Shrine5		,15		,32		,388		,MapTileType.Large			,8		,16		],	//388
		[Maps.Shrine5		,16		,32		,389		,MapTileType.Large			,10		,16		],	//389
		[Maps.Shrine5		,15		,33		,390		,MapTileType.Large			,8		,18		],	//390
		[Maps.Shrine5		,20		,33		,391		,MapTileType.Large			,8		,6		],	//391
		[Maps.Shrine5		,21		,33		,392		,MapTileType.Large			,10		,6		],	//392
		[Maps.Shrine5		,22		,33		,393		,MapTileType.Large			,12		,6		],	//393
		[Maps.Shrine5		,15		,34		,394		,MapTileType.Large			,8		,20		],	//394
		[Maps.Shrine5		,16		,34		,395		,MapTileType.Large			,10		,20		],	//395
		[Maps.Shrine5		,17		,34		,396		,MapTileType.Large			,12		,20		],	//396
		[Maps.Shrine5		,19		,34		,397		,MapTileType.Large			,6		,8		],	//397
		[Maps.Shrine5		,20		,34		,398		,MapTileType.Large			,8		,8		],	//398
		[Maps.Shrine5		,22		,34		,399		,MapTileType.Large			,12		,8		],	//399
		[Maps.Shrine5		,23		,34		,400		,MapTileType.Large			,14		,8		],	//400
		[Maps.Shrine5		,24		,34		,401		,MapTileType.Large			,16		,8		],	//401
		[Maps.Shrine5		,17		,35		,402		,MapTileType.Large			,12		,22		],	//402
		[Maps.Shrine5		,18		,35		,403		,MapTileType.Large			,14		,22		],	//403
		[Maps.Shrine5		,19		,35		,404		,MapTileType.Large			,16		,16		],	//404
		[Maps.Shrine5		,24		,35		,405		,MapTileType.Large			,16		,10		],	//405
		[Maps.Shrine5		,25		,35		,406		,MapTileType.Large			,18		,10		],	//406
		[Maps.Shrine5		,26		,35		,407		,MapTileType.SignRoom		,20		,10		],	//407
		[Maps.Shrine5		,18		,36		,408		,MapTileType.Large			,14		,24		],	//408
		[Maps.Shrine5		,19		,36		,409		,MapTileType.Large			,16		,24		],	//409
	//Shrine 6 (Strength)                                                               
		//MapID				,TileX	,TileY	,TileID		,TileType					,MapX	,MapY
		[Maps.Shrine6		,21		,37		,410		,MapTileType.SignRoom		,12		,8		],	//410
		[Maps.Shrine6		,22		,37		,411		,MapTileType.Large			,14		,8		],	//411
		[Maps.Shrine6		,23		,37		,412		,MapTileType.Large			,16		,8		],	//412
		[Maps.Shrine6		,24		,37		,413		,MapTileType.Large			,18		,8		],	//413
		[Maps.Shrine6		,25		,37		,414		,MapTileType.Large			,20		,8		],	//414
		[Maps.Shrine6		,25		,38		,415		,MapTileType.Large			,20		,10		],	//415
		[Maps.Shrine6		,26		,38		,416		,MapTileType.Large			,22		,10		],	//416
		[Maps.Shrine6		,26		,39		,417		,MapTileType.Large			,22		,12		],	//417
		[Maps.Shrine6		,27		,39		,418		,MapTileType.Large			,24		,12		],	//418
		[Maps.Shrine6		,15		,40		,419		,MapTileType.Large			,0		,14		],	//419
		[Maps.Shrine6		,16		,40		,420		,MapTileType.Large			,2		,14		],	//420
		[Maps.Shrine6		,26		,40		,421		,MapTileType.Large			,22		,14		],	//421
		[Maps.Shrine6		,27		,40		,422		,MapTileType.Large			,24		,14		],	//422
		[Maps.Shrine6		,15		,41		,423		,MapTileType.Large			,0		,16		],	//423
		[Maps.Shrine6		,16		,41		,424		,MapTileType.Large			,2		,16		],	//424
		[Maps.Shrine6		,17		,41		,425		,MapTileType.Large			,4		,16		],	//425
		[Maps.Shrine6		,18		,41		,426		,MapTileType.Large			,6		,16		],	//426
		[Maps.Shrine6		,25		,41		,427		,MapTileType.Large			,20		,16		],	//427
		[Maps.Shrine6		,26		,41		,428		,MapTileType.Large			,22		,16		],	//428
		[Maps.Shrine6		,18		,42		,429		,MapTileType.Large			,6		,18		],	//429
		[Maps.Shrine6		,24		,42		,430		,MapTileType.Large			,18		,18		],	//430
		[Maps.Shrine6		,25		,42		,431		,MapTileType.Large			,20		,18		],	//431
		[Maps.Shrine6		,18		,43		,432		,MapTileType.Large			,6 		,20		],	//432
		[Maps.Shrine6		,19		,43		,433		,MapTileType.Large			,8 		,20		],	//433
		[Maps.Shrine6		,20		,43		,434		,MapTileType.Large			,10		,20		],	//434
		[Maps.Shrine6		,21		,43		,435		,MapTileType.Large			,12		,20		],	//435
		[Maps.Shrine6		,22		,43		,436		,MapTileType.Large			,14		,20		],	//436
		[Maps.Shrine6		,23		,43		,437		,MapTileType.Large			,16		,20		],	//437
		[Maps.Shrine6		,24		,43		,438		,MapTileType.Large			,18		,20		],	//438
	//Shrine 7 (Fire) 
		//MapID				,TileX	,TileY	,TileID		,TileType					,MapX	,MapY
		[Maps.Shrine7		,6		,37		,439		,MapTileType.SignRoom		,14		,6		],	//439
		[Maps.Shrine7		,2		,38		,440		,MapTileType.Large			,8		,12		],	//440
		[Maps.Shrine7		,3		,38		,441		,MapTileType.Large			,10		,12		],	//441
		[Maps.Shrine7		,4		,38		,442		,MapTileType.Large			,12		,12		],	//442
		[Maps.Shrine7		,6		,38		,443		,MapTileType.Large			,14		,8		],	//443
		[Maps.Shrine7		,7		,38		,444		,MapTileType.Large			,18		,8		],	//444
		[Maps.Shrine7		,2		,39		,445		,MapTileType.Large			,8		,14		],	//445
		[Maps.Shrine7		,4		,39		,446		,MapTileType.Large			,12		,14		],	//446
		[Maps.Shrine7		,7		,39		,447		,MapTileType.Large			,18		,10		],	//447
		[Maps.Shrine7		,2		,40		,448		,MapTileType.Large			,8		,16		],	//448
		[Maps.Shrine7		,4		,40		,449		,MapTileType.Large			,12		,16		],	//449
		[Maps.Shrine7		,5		,40		,450		,MapTileType.Large			,14		,16		],	//450
		[Maps.Shrine7		,7		,40		,451		,MapTileType.Large			,18		,16		],	//451
		[Maps.Shrine7		,8		,40		,452		,MapTileType.Large			,20		,16		],	//452
		[Maps.Shrine7		,1		,41		,453		,MapTileType.Large			,6		,18		],	//453
		[Maps.Shrine7		,2		,41		,454		,MapTileType.Large			,8		,18		],	//454
		[Maps.Shrine7		,5		,41		,455		,MapTileType.Large			,14		,18		],	//455
		[Maps.Shrine7		,6		,41		,456		,MapTileType.Large			,16		,18		],	//456
		[Maps.Shrine7		,7		,41		,457		,MapTileType.Large			,18		,18		],	//457
		[Maps.Shrine7		,8		,41		,458		,MapTileType.Large			,20		,18		],	//458
		[Maps.Shrine7		,1		,42		,459		,MapTileType.Large			,6		,20		],	//459
		[Maps.Shrine7		,2		,42		,460		,MapTileType.Large			,8		,20		],	//460
		[Maps.Shrine7		,3		,42		,461		,MapTileType.Large			,10		,20		],	//461
		[Maps.Shrine7		,3		,43		,462		,MapTileType.Large			,10		,22		],	//462
	//Ganon's Gauntlet                                                                  
		//MapID				,TileX	,TileY	,TileID		,TileType					,MapX	,MapY
		[Maps.Gauntlet		,0		,16		,463		,MapTileType.Regular		,4		,10		],	//463 Llort
		[Maps.Gauntlet		,1		,16		,464		,MapTileType.Large			,12		,10		],	//464 Pasquinade
		[Maps.Gauntlet		,2		,16		,465		,MapTileType.Large			,20		,10		],	//465 Aviana
		[Maps.Gauntlet		,3		,16		,466		,MapTileType.Large			,8		,14		],	//466 Malmord
		[Maps.Gauntlet		,4		,16		,467		,MapTileType.Large			,12		,14		],	//467 Agwanda
		[Maps.Gauntlet		,5		,16		,468		,MapTileType.Large			,-1		,-1		],	//468 Ursore (Unused)
		[Maps.Gauntlet		,6		,16		,469		,MapTileType.Large			,16		,14		],	//469 Warbane
		[Maps.Gauntlet		,7		,16		,470		,MapTileType.Large			,12		,18		],	//470 Ganon
	]
}