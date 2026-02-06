extends TileMapLayer
const sphereoids = preload("res://guy.tscn")
var balls: TileMapLayer = sphereoids.instantiate()


	

func _physics_process(delta: float) -> void:
	
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().root.add_child(Global.balls)
		Global.Ballnum += 1
		
		
	set_cell(Global.StartCoords, 2, Vector2i(0, 0), 9)
	
	if Input.is_action_just_pressed("mb_left"):
		var tilepos: Vector2 = local_to_map(get_global_mouse_position())
		if get_cell_source_id(tilepos) == 0:
			set_cell(tilepos, 2, Vector2i(0, 0), Global.selectedtile)
			#print("oh yea")
	if Input.is_action_just_pressed("mb_right"):
		var tilepos: Vector2 = local_to_map(get_global_mouse_position())
		set_cell(tilepos, 0, Vector2i(0, 0))
		
		
	if get_cell_alternative_tile(Global.Payloadpos) == 7:
		Global.Internal_Value -= 1
		Global.Payloadpos.y += 1
		
	if get_cell_alternative_tile(Global.Payloadpos) == 8:
		if balls != null:
			print("wow that ball had a value of ", Global.Internal_Value)
			Global.balls.queue_free()
			Global.balls = preload("res://guy.tscn").instantiate()
			Global.Payloadpos = Global.StartCoords
			#Global.Internal_Value = 3
			
	if Global.balls.is_inside_tree():
		if get_cell_alternative_tile(Global.Payloadpos) == 5:
			Global.Payloadpos.x += 1
		elif get_cell_alternative_tile(Global.Payloadpos) == 1:
			Global.Payloadpos.x -= 1
		elif get_cell_alternative_tile(Global.Payloadpos) == 2:
			Global.Payloadpos.y -= 1
		elif get_cell_alternative_tile(Global.Payloadpos) == 6:
			Global.Payloadpos.y += 1
		elif get_cell_alternative_tile(Global.Payloadpos) == 9:
			Global.Payloadpos.x += 1
		elif get_cell_alternative_tile(Global.Payloadpos) == 3:
			if Global.Internal_Value % 2 == 0:
				Global.Payloadpos.x += 1
			else:
				Global.Payloadpos.x -= 1
