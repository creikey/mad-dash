extends ProgressBar

const player_state = preload("res://player_state.tres")

func _ready():
	max_value = player_state.max_health

func _process(delta):
	value = player_state.health
