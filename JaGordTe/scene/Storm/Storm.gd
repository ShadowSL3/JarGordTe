extends Resource


class_name Storm
signal current_storm(storm:Area2D)
@export_category("Storm Settings")
@export var lenght:int
@export var width:float
@export var height:float
@export var position:Vector2
@export_enum("Low", "Medium", "High", "Extreme") var storm_type:int
@export_subgroup("Advanced Settings")
@export var Custom_warning:Texture2D
@export_range(0, 100) var damage_storm
@export_enum("Nothing:10", "Largurate:15", "Woleden:50") var storm_function
@export_flags("knock") var type_ambient_storm

func storm_init(damage:int) -> void:
	if position.x < 300:
		print("Position Error")
	else:
		print("Position Valid For Initializing storm with damage:", damage_storm)
		damage_storm = storm_type
