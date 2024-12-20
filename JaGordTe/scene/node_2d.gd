extends Node2D

@onready var UI = $UI
@onready var label = $UI/Label
@onready var stamina = $UI/Label/Stamina
@onready var effect_damage = $UI/Label/Stamina/Effect_Damage
@onready var color_rect = $UI/Label/Stamina/Effect_Damage/ColorRect
@onready var animation_player = $UI/Label/Stamina/Effect_Damage/ColorRect/AnimationPlayer
@onready var timer_reload_health = $Timer
func _ready():
	color_rect.visible = false
	
func _input(event):
	if event is InputEvent:
		if event.is_action("W"):
			stamina.value -= 0.77
			if stamina.value < 0:
				stamina.value = 0
		if stamina.value <= 8:
			color_rect.visible = true
			animation_player.play("stamina_low_anim_1")
#			animation_player.speed_scale * velocity_on_time
#		if stamina.value <= 7.5:
#			animation_player.speed_scale
			print("IS Number On stamina", "\n", stamina.value)
			if stamina.value == 0:
				timer_reload_health.start(1.1)
				print("Wait Moment Reloading Health")
				stamina.value += 50 
				animation_player.stop()
