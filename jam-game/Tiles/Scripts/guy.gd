extends TileMapLayer
var selfpos: Vector2

const one = Vector2i(0, 0)
const two = Vector2i(1, 0)
const three = Vector2i(2, 0)



func _physics_process(delta: float) -> void:
	clear()
	set_cell(Global.Payloadpos, 2, one)
	
