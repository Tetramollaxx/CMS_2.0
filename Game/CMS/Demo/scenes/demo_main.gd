extends Node2D


@onready var godot : EntityHolderNode = $EntityHolderNode


func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		Interactions.call_implementers("OnSpacePressed")

func _input(event : InputEvent):
	if event is InputEventMouseButton:
		var pos = godot.global_position
		godot.queue_free()
		godot = preload("res://Game/CMS/Demo/scenes/entity_holder_node.tscn").instantiate()
		godot.global_position = pos
		add_child(godot)
