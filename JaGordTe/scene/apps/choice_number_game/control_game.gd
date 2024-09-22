extends Control

@onready var button = $Panel/PlayButton
@onready var settings_button = $Panel/Settings_button
var selected_button = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _input(event):
	if event is InputEvent:
		if event.is_action("PS5_Controller_LEFT_STICK"):
			navigate_left()
		elif event.is_action("PS5_Controller_RIGHT_STICK"):
			navigate_right()
		elif event.is_action("Mouse_left"):
			right_left()
		elif event.is_action("Mouse_Right"):
			right_move()


func right_move():
	pass
func right_left():
	pass
func navigate_left():
	pass
func navigate_right():
	pass
