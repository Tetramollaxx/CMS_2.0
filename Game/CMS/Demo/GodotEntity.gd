@tool
extends EntityData
class_name CustomEntity

## Auto add tags
func _init():
	if Engine.is_editor_hint():
		Tags = [
			TagScale.new(),
			TagObjectVisualForm.new(),
			]
