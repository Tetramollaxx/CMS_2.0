extends Tag
class_name TagShowVisualElements


@export var Elements : Array[NodePath]

func OnEntityReady():
	if entity_node is EntityHolderNode:
		for e in Elements:
			if entity_node.has_node(e):
				entity_node.get_node(e).show()
