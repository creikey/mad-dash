extends GridContainer

const player_state = preload("res://player_state.tres")

var key_size: Vector2 = Vector2(140.0, 140.0)

var rows = [
	"qwertyuiop",
	"asdfghjkl;",
	"zxcvbnm,./"
]

func _ready():
	for r in rows:
		for character in r:
			var cur_possible_key: PossibleKey = preload("res://PossibleKey.tscn").instance()
			add_child(cur_possible_key)
			cur_possible_key.name = str("Key_", character)
			cur_possible_key.letter = character
			cur_possible_key.connect("pressed", self, "key_pressed")
			cur_possible_key.activate()

func key_pressed(letter, new_position):
	if get_parent().disabled:
		return
	player_state.cur_target_position = new_position
