extends Node2D

func _ready():
	add_goal_node()

func add_goal_node():
	var target_global_position: Vector2 = $StageOne.map_to_world($StageOne.get_used_cells_by_id(0)[0]) + $StageOne.global_position
	
	var cur_goal: Node2D = preload("res://Goal.tscn").instance()
	add_child(cur_goal)
	cur_goal.global_position = target_global_position
