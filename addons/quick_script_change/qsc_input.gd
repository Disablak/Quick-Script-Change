@tool
extends Control


@export var line_edit: LineEdit
@export var conteiner_elements: Control



func _input(event: InputEvent) -> void:
	if not event is InputEventKey:
		return

	if event.is_pressed() and event.keycode == KEY_DOWN and line_edit.has_focus():
		_try_select_next()


func _try_select_next():
	await get_tree().process_frame
	if conteiner_elements.get_child_count() > 0:
		var child: Control = conteiner_elements.get_child(0) as Control
		child.grab_focus()
