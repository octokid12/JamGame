extends TileMapLayer
var selfpos: Vector2


func _physics_process(delta: float) -> void:
	clear()
	set_cell(Global.Payloadpos, 1, Vector2i(2, 3))


		
