extends HFlowContainer

var componentIconScene = preload("res://Src/Item/MaterialIcon/material_icon.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	Components.new_material_obtained.connect(on_new_material_obtained)
	Components.inventory_updated.connect(on_inventory_updated)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func on_new_material_obtained(mat):
	var newIcon = componentIconScene.instantiate()
	newIcon.type = mat;
	newIcon.value = Components.inventory[mat]
	
	add_child(newIcon);

func on_inventory_updated():
	for item in get_children():
		item.value = Components.inventory[item.type]
