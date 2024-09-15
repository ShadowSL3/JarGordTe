extends Resource
class_name Weapon
signal shoot_to_body(node: Sprite2D)
@export_category("Settings")
@export var weapon_name:String
@export var ammo:int
@export_enum("White","Rare", "Oro", "Gold", "Mythic") var weapons_type
@export var weapons_effect = 10


func _weapon():
	var wp_damage = 10
	if weapons_type > ammo:
		wp_damage + 1
		weapons_effect += 1
