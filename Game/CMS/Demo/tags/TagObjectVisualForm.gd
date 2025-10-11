extends Tag
class_name TagObjectVisualForm





@export var form : EntityHolderNode.VisualForms


func OnEntityReady():
	if entity_node is EntityHolderNode:
		entity_node.SetForm(form)
