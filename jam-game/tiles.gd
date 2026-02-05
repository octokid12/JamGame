extends TileMapLayer



func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("mb_left"):
		var tilepos: Vector2 = local_to_map(get_global_mouse_position())
		set_cell(tilepos, 2, Vector2i(0, 0), Global.selectedtile)
		
	if Input.is_action_just_pressed("mb_right"):
		var tilepos: Vector2 = local_to_map(get_global_mouse_position())
		set_cell(tilepos, 2, Vector2i(0, 0), -1)
		
		
	
	if get_cell_alternative_tile(Global.Payloadpos) == 5:
		Global.Payloadpos.x += 1
	elif get_cell_alternative_tile(Global.Payloadpos) == 1:
		Global.Payloadpos.x -= 1
	elif get_cell_alternative_tile(Global.Payloadpos) == 2:
		Global.Payloadpos.y -= 1
	elif get_cell_alternative_tile(Global.Payloadpos) == 6:
		Global.Payloadpos.y += 1
