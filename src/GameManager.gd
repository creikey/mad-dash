extends Node

var time: float = 0.0

func start_game():
	time = 0.0
	get_tree().change_scene("res://Main.tscn")

func won():
	get_tree().change_scene("res://Won.tscn")

func _input(event):
	if event.is_action_pressed("g_restart"):
		start_game()
