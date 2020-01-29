extends Area2D

func _on_Goal_area_entered(area):
	if area.is_in_group("goal_piece"):
		GameManager.got_to_goal()
