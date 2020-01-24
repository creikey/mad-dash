extends MarginContainer

func _ready():
	margin_right = ProjectSettings.get_setting("display/window/size/width")
	margin_bottom = ProjectSettings.get_setting("display/window/size/height")
