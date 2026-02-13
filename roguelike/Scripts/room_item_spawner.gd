extends Node2D

@export var item_scenes: Array[PackedScene]

func _ready() -> void:
	var item = item_scenes[randi_range(0, item_scenes.size() - 1)].instantiate()
	add_child(item)
