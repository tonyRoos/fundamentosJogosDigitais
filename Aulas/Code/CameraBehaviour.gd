extends Camera2D

@export var player: CharacterBody2D
@export var min_position: Vector2
@export var max_position:Vector2

var camera_position: Vector2
func _process(_delta: float) -> void:
	camera_position.x = clamp( player.transform.origin.x, min_position.x, max_position.x)
	camera_position.y = clamp( player.transform.origin.y, min_position.y, max_position.y)
	
	transform.origin = camera_position
