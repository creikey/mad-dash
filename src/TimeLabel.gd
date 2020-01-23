extends Label

func _process(delta):
	text = str(stepify(GameManager.time, 0.1))
