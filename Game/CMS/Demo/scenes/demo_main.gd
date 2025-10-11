extends Node2D


@onready var node : EntityHolderNode = $EntityHolderNode
#
#



func _on_randomize_button_pressed() -> void:
	var pos = node.global_position
	node.queue_free()
	node = preload("res://Game/CMS/Demo/scenes/entity_holder_node.tscn").instantiate()
	node.global_position = pos
	add_child(node)
