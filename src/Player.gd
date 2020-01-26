extends Area2D

const position_smoothing = 8.0

var cur_target_position: Vector2 = Vector2()
var starting_position: Vector2 = Vector2()
var at_start: bool = true

func _ready():
	GameManager.connect("stage_changed", self, "_on_stage_changed")

func _on_stage_changed(new_stage_number):
	cur_target_position = starting_position

func _physics_process(delta):
	if not at_start:
		global_position = starting_position
		cur_target_position = starting_position
		at_start = true
	
	global_position = ((cur_target_position - global_position) * position_smoothing * delta) + global_position


func _on_KeysMarginContainer_new_position(new_position):
	cur_target_position = new_position


func _on_KeysMarginContainer_starting_position(new_position):
	starting_position = new_position
	at_start = false
