@tool
extends EntityData
class_name GodotEntity


func _init():
	if Engine.is_editor_hint():
		Tags = [TagScale.new()]
