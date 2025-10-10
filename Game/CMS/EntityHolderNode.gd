extends Node2D
## This node is example of using CMS. It can be a card, or an enemy, or even a run setup for a game
class_name EntityHolderNode


@export var data : EntityData
@export var load_random_data : bool = true


func _enter_tree() -> void:
	if load_random_data:
		data = CMS.load_resource(CMS.get_resources_in_directory("res://Game/CMS/Demo/Entities/").pick_random())
	data = data.duplicate_deep(Resource.DEEP_DUPLICATE_ALL) ## make unique
	data.Initialize(self)
