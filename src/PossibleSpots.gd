extends GridContainer

signal starting_position(position)
signal new_position(position)

var frame_counter: int = 0 # waits a few frames before settings player's start position

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

func _process(delta):
	frame_counter += 1
	if frame_counter >= 4:
		emit_signal("starting_position", get_node("Key_q").get_player_position())
		set_process(false)

func key_pressed(letter, new_position):
	emit_signal("new_position", new_position)
