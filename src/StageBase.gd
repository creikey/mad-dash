extends Node2D

var target_keyboard_container: Control = null

func transitioning(): # destroy self after moved off of screen
	$DestroyTimer.start()

func _process(delta):
	if target_keyboard_container != null:
		global_position = target_keyboard_container.get_global_rect().position


func _on_DestroyTimer_timeout():
	queue_free()
