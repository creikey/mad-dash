extends Area2D

const position_smoothing = 8.0

var cur_target_position: Vector2 = Vector2()
var starting_position: Vector2 = Vector2() setget _set_starting_position
var at_start: bool = true

func _physics_process(delta):
	if not at_start:
		global_position = starting_position
		at_start = true
	
	global_position = ((cur_target_position - global_position) * position_smoothing * delta) + global_position

func _on_PossibleSpots_new_position(new_position):
	cur_target_position = new_position

func _set_starting_position(new_starting_position):
	starting_position = new_starting_position
	cur_target_position = starting_position
	at_start = false

func _on_PossibleSpots_starting_position(position):
	self.starting_position = position
