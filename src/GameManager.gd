extends Node

signal stage_changed(new_stage)

var stage: int = 1 setget _set_stage

func start_game():
	self.stage = 1
	get_tree().change_scene("res://Main.tscn")

func got_to_goal():
	self.stage += 1

func _input(event):
	if event.is_action_pressed("g_restart"):
		start_game()

func _set_stage(new_stage):
	stage = new_stage
	emit_signal("stage_changed", stage)
