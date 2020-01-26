extends Node2D

func _ready():
	GameManager.connect()
#	add_child(preload("res://stages/StageOne.tscn").instance())
#	get_node("StageOne").target_keyboard_container = 
