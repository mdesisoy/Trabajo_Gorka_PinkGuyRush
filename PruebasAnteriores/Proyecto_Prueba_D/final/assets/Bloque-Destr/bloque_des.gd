extends TileMap

var cell
var cell_id

#func destruir():
	#cell = world_to_map(1)
	#cell_id = get_cellv(cell)
	#match cell_id:
		#0:
			#set_cellv(cell, 1)
		#1:
			#set_cellv(cell, 2)
		#2:
			#set_cellv(cell, 3)
		#3:
			#set_cellv(cell, -1)
