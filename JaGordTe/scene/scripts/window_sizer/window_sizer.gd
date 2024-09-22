extends Control

@export var option_button = OptionButton.new()
const RESOLUTION : Dictionary = {
		"1920 x 1080" : Vector2i(1920,1080),
		"1152 648" : Vector2i(1152, 648),
		"1290 720" : Vector2i(1920, 720),
		"980 x 480" : Vector2i(980, 480)
	}

func _ready():
	option_button.item_selected.connect(on_window_resolution_size)

func add_resolution_items() -> void:
	for window_resolution_size_text in RESOLUTION:
		option_button.add_item(window_resolution_size_text)
func on_window_resolution_size(index : int) -> void:
	DisplayServer.window_set_size(RESOLUTION.values()[index])
