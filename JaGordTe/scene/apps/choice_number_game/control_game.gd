extends Control


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
			
func navigate_left():
	pass
func navigate_right():
	pass
