extends TileMapLayer
var selfpos: Vector2


var Current_Value = one
const one = Vector2i(0, 0)
const two = Vector2i(1, 0)
const three = Vector2i(2, 0)
const four = Vector2i(0, 1)
const five = Vector2i(1, 1)
const six = Vector2i(2, 1)
const seven = Vector2i(0, 2)
const eight = Vector2i(1, 2)
const nine = Vector2i(2, 2)
const zero = Vector2i(0, 3)

func _ready() -> void:
	Global.Payloadpos = Global.StartCoords
	set_cell(Global.StartCoords, 2, Current_Value)
	Global.Internal_Value = Global.Ballorder[Global.Ballnum]
	Global.CurrentPayload = self

func _physics_process(delta: float) -> void:
	clear()
	set_cell(Global.Payloadpos, 2, Current_Value)
	
	if Global.Internal_Value == 1:
		Current_Value = one
	if Global.Internal_Value == 2:
		Current_Value = two
	if Global.Internal_Value == 3:
		Current_Value = three
	if Global.Internal_Value == 4:
		Current_Value = four
	if Global.Internal_Value == 5:
		Current_Value = five
	if Global.Internal_Value == 6:
		Current_Value = six
	if Global.Internal_Value == 7:
		Current_Value = seven
	if Global.Internal_Value == 8:
		Current_Value = eight
	if Global.Internal_Value == 9:
		Current_Value = nine
	if Global.Internal_Value == 0:
		Current_Value = zero
	
