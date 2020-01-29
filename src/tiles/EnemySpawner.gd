extends Node2D

export var chance: float = 0.3

func _ready():
	randomize()
	if rand_range(0.0, 1.0) <= chance:
		add_child(preload("res://tiles/spawnable/Enemy.tscn").instance())
