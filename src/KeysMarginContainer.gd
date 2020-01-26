extends MarginContainer

signal starting_position(new_position)
signal new_position(new_position)

func _ready():
	margin_right = ProjectSettings.get_setting("display/window/size/width")
	margin_bottom = ProjectSettings.get_setting("display/window/size/height")
