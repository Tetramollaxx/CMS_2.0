extends Tag
class_name TagChangeVisibilityOnSpacePressed


func OnSpacePressed():
	if entity_node is Node2D:
		entity_node.visible = !entity_node.visible
