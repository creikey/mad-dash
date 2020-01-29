extends Node2D

class_name StageBase

const player_state = preload("res://player_state.tres")

var disabled: bool = false

func _ready():
	player_state.starting_position = get_starting_position()

func get_starting_position() -> Vector2:
	return $Tiles/StartingPoint.global_position + $KeySpots.key_size/2.0
