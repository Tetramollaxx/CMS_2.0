extends Node2D
## This node is example of using CMS. It can be a card, or an enemy, or even a run setup for a game
class_name EntityHolderNode


@export var data : EntityData


func _enter_tree() -> void:
	data = data.duplicate_deep(Resource.DEEP_DUPLICATE_ALL) ## make unique
	data.Initialize(self)
