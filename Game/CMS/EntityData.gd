extends Resource
## Serializable resource that defines the configuration and behavior of an Entity.
## Contains an array of tags (Tag resources), which each encapsulate logic or modifiers.
##
## This data is duplicated at runtime to ensure each Entity instance is isolated.
class_name EntityData

## All tags that define this entity's behavior
@export var Tags: Array[Tag]

## Runtime reference to the owning Entity node
var node : Node

func Initialize(node_to_bind : Node):
	node_to_bind.connect("tree_exiting", Callable(self, "_on_node_exiting"))
	node_to_bind.connect("ready", Callable(self, "_on_node_ready"))

	# Init tags
	for t in Tags:
		t.entity_node = node_to_bind
		t._on_init_data(self)

func _on_node_ready():
	for t in Tags:
		t.OnEntityReady()

func _on_node_exiting():
	Unregister()

func Unregister():
	#print(get_reference_count())
	for tag in Tags:
		tag._on_unregister()
		assert(tag.get_reference_count() <= 2, "Memory leak detected: Tag has too many references.")
	assert(get_reference_count() <= 3, "Memory leak detected: EntityData has too many references.")

# if you get an error here, check if you are saving
# the reference to tags or EntityData somewhere
