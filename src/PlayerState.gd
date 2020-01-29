extends Resource

var cur_target_position: Vector2 = Vector2()
var starting_position: Vector2 = Vector2() setget _set_starting_position

func _set_starting_position(new_starting_position):
	starting_position = new_starting_position
	cur_target_position = new_starting_position
