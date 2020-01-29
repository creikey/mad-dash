extends Resource

signal dead

const max_health = 4.0

var previous_target_position: Vector2 = Vector2()
var cur_target_position: Vector2 = Vector2() setget _set_cur_target_position
var starting_position: Vector2 = Vector2() setget _set_starting_position

var health: float = 0.0 setget _set_health

func _set_health(new_health):
	health = new_health
	if health <= 0.0:
		emit_signal("dead")

func _set_cur_target_position(new_cur_target_position):
	previous_target_position = cur_target_position
	cur_target_position = new_cur_target_position

func _set_starting_position(new_starting_position):
	starting_position = new_starting_position
	cur_target_position = new_starting_position
