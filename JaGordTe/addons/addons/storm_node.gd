@tool
extends EditorPlugin


func _enter_tree():
	add_custom_type("Storm", "Area2D", preload("res://scene/Storm/Storm.gd"), preload("res://icon.svg"))
func _exit_tree():
	# Clean-up of the plugin goes here.
	remove_custom_type("Storm")
