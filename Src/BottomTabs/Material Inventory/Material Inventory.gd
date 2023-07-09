extends HFlowContainer
enum types{mat, complete}
@export var type = types.mat
@export var xOffset:float
var componentIconScene = preload("res://Src/Item/MaterialIcon/material_icon.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	Components.new_material_obtained.connect(on_new_material_obtained)
	Components.inventory_updated.connect(on_inventory_updated)
	if type == types.mat:
		for mat in Items.materials:
			Components.add(Components.inventories.C,mat,0)
	else:
		for item in Items.order:
			if item != "Sample":
				Components.add(Components.inventories.C,item,0)
	ScreenNavigation.screen_changed.connect(on_screen_changed)
	get_parent().position.x = xOffset
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func on_new_material_obtained(mat,inventory):
	if inventory != Components.inventories.C:
		return
	if type == types.mat:
		if Items.order.has(mat):
			return
	var newIcon = componentIconScene.instantiate()
	newIcon.type = mat;
	newIcon.value = Components.inventory_C[mat]
	add_child(newIcon);

func on_screen_changed(idx):
	pass
	get_parent().position.x = (1920*idx) + xOffset

func on_inventory_updated(inventory):
	if inventory != Components.inventories.C:
		return
	for item in get_children():
		item.value = Components.inventory_C[item.type]
