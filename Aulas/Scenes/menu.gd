extends Control

@export var buttonList: Array[Button] = [] 
@export var sceneList : Array[PackedScene] = []

func _ready() -> void:
	for i in range(sceneList.size()):
		buttonList[i].connect("pressed", Callable(self, "_load_scene").bind(i))


func _load_scene(sceneIndex: int) -> void:
	get_tree().change_scene_to_packed(sceneList[sceneIndex])
