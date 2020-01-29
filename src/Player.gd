extends Area2D

const player_state = preload("res://player_state.tres")
const position_smoothing = 8.0

func _physics_process(delta):
	global_position = ((player_state.cur_target_position - global_position) * position_smoothing * delta) + global_position


func _on_StageTransitionTween_tween_all_completed():
	$CollisionShape2D.disabled = false


func _on_StageTransitionTween_tween_started(object, key):
	$CollisionShape2D.disabled = true
