extends Node

var stage: int = 1

func start_game():
	stage = 1
	get_tree().change_scene("res://Main.tscn")

func _input(event):
	if event.is_action_pressed("g_restart"):
		start_game()
