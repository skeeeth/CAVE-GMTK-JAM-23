extends Node
signal new_material_obtained(material)
signal inventory_updated
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

func get_icon(type):
	match type:
		_:
			return load("res://Assets/icon.svg")
