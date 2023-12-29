@tool
extends Popup


var _count_elements := -1;


func _ready() -> void:
	update_size(0)


func update_size(count_elements: int):
	count_elements = mini(count_elements, 10)
	if count_elements == _count_elements:
		return

	_count_elements = count_elements
	size = Vector2(1000, 100 + (count_elements * (59) + ((count_elements) * 5)))

	var screen_size := DisplayServer.screen_get_size()
	var pos_x: int = (screen_size.x / 2) - (size.x / 2)
	var pos_y: int = screen_size.y / 3

	position = Vector2i(pos_x, pos_y)
