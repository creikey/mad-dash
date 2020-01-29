extends Node2D

var transitioning: bool = false
var last_stage: StageBase = null
var cur_stage: StageBase = null

func _ready():
	cur_stage = spawn_stage(0)
	GameManager.connect("stage_changed", self, "_on_stage_changed")

func _on_stage_changed(new_stage_number):
	call_deferred("next_stage", new_stage_number)

func next_stage(new_stage_number):
	transitioning = true
	var width: float = ProjectSettings.get_setting("display/window/size/width")
	var height: float = ProjectSettings.get_setting("display/window/size/height")
	
	last_stage = cur_stage
	
	cur_stage = spawn_stage(new_stage_number)
	
	cur_stage.disabled = true
	last_stage.disabled = true

	var base_position: Vector2 = cur_stage.global_position
	
	$StageTransitionTween.interpolate_property(cur_stage, "global_position", base_position + Vector2(width, 0.0), base_position, 0.3, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	$StageTransitionTween.interpolate_property(last_stage, "global_position", base_position, base_position - Vector2(width, 0.0), 0.3, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	$StageTransitionTween.start()

func spawn_stage(stage_number) -> Node2D:
	var cur_stage: Node2D = preload("res://stages/StageOne.tscn").instance()
	add_child(cur_stage)
	return cur_stage


func _on_StageTransitionTween_tween_all_completed():
	if last_stage != null:
		last_stage.queue_free()
		last_stage = null
	cur_stage.disabled = false
