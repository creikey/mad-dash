extends MarginContainer

class_name PossibleKey

signal pressed(letter, new_position)

var letter = "l"

func activate():
	$Label.text = letter

func _input(event):
	if event is InputEventKey and event.pressed and event.unicode == ord(letter):
		emit_signal("pressed", letter, get_player_position())

func get_player_position() -> Vector2: # position player would be at this key
	return get_global_rect().position + rect_size/2.0
