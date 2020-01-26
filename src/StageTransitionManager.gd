extends Node2D

func _ready():
	GameManager.connect("stage_changed", self, "_on_stage_changed")

func _on_stage_changed(_new_stage_number):
	$TransitionTween.stop_all()
	
	var real_container: Control = $KeysMarginContainer
	var fake_container: Control = $KeysMarginContainerFake
	fake_container.rect_position = real_container.rect_position
	var container_width: float = real_container.rect_size.x
	
	# make real one the one on the right and fake one visible
	real_container.rect_position.x += container_width
	fake_container.visible = true
	
	# shift all containers over by one to the left
	for container in [ real_container, fake_container ]:
		$TransitionTween.interpolate_property( \
			container, \
			"rect_position", \
			container.rect_position, \
			Vector2(container.rect_position.x - container_width, container.rect_position.y), \
			0.5, Tween.TRANS_CUBIC, Tween.EASE_OUT )
	
	$TransitionTween.start()


func _on_TransitionTween_tween_all_completed():
	$KeysMarginContainerFake.visible = false
