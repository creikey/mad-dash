extends Area2D

const game_properties = preload("res://game_properties.tres")

func _ready():
	$CollisionShape2D.global_position += game_properties.grid_size / 2.0

func _on_ShootTimer_timeout():
	var cur_laser: Node2D = preload("res://tiles/spawnable/Laser.tscn").instance()
	get_parent().add_child(cur_laser)
	cur_laser.global_position = global_position + game_properties.grid_size/2.0
	cur_laser.global_rotation = global_rotation
