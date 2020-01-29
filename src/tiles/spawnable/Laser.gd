extends Area2D

func _process(delta):
	global_position += Vector2(400.0, 0.0).rotated(rotation)*delta


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
