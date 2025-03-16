extends Control

var _menu_scene = "res://Scenes/main_menu.tscn"
@export var btn_goBack: Button
@export var btn_reset: Button

func _ready() -> void:
	btn_goBack.pressed.connect( _load_scene)
	btn_reset.pressed.connect( _reset_scene)

func _load_scene() -> void:
	get_tree().change_scene_to_file( _menu_scene)
	
func _reset_scene() -> void:
	get_tree().reload_current_scene()
