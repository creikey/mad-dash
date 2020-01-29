extends Area2D

const player_state = preload("res://player_state.tres")
const position_smoothing = 8.0

func _ready():
	player_state.health = player_state.max_health
	player_state.connect("dead", self, "_on_death")

func _physics_process(delta):
	global_position = ((player_state.cur_target_position - global_position) * position_smoothing * delta) + global_position


func _on_StageTransitionTween_tween_all_completed():
	$CollisionShape2D.disabled = false


func _on_StageTransitionTween_tween_started(object, key):
	$CollisionShape2D.disabled = true

func _on_death():
	get_tree().change_scene("res://Dead.tscn")

func _on_Player_area_entered(area):
	if area.is_in_group("bad"):
		player_state.health -= 1
		player_state.cur_target_position = player_state.previous_target_position
