extends Tag
class_name TagScale


## DATA
@export var scale : Vector2 = Vector2.ONE:
	set(v):
		scale = v
		if entity_node is EntityHolderNode:
			entity_node.scale = v

## BEHAVIOUR
func OnEntityReady():
	if entity_node is EntityHolderNode:
		entity_node.scale = scale
