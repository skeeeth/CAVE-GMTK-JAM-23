extends Node
signal new_material_obtained(material)
signal inventory_updated(inventory)
enum inventories{C,I}
var inventory_C:Dictionary = {
}
var inventory_I:Dictionary = {	
}
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func add(inventory,key,count):
	var dict
	match inventory:
		inventories.C:
			dict = inventory_C
		inventories.I:
			dict = inventory_I
	if dict.has(key):
		dict[key] += count;
		emit_signal("inventory_updated",inventory)
	else:
		dict[key] = count;
		emit_signal("new_material_obtained",key,inventory)

func get_icon(type):
	match type:
		_:
			return load("res://Assets/icon.svg")
