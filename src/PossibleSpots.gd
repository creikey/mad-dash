extends GridContainer

signal new_position(new_position)

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
	emit_signal("new_position", new_position)
