extends VBoxContainer
class_name Item
 
signal item_selected(item)
signal order_filled
@onready var materials = $Materials
@onready var texture_rect = $TextureRect
@onready var nameLabel = $Name
@export var components:Dictionary = {}
@export var image:Texture2D
var itemName:String
@export var behavior = Items.itemBehaviors.SCRAP
var componentIconScene = preload("res://Src/Item/MaterialIcon/material_icon.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	for mat in components:
		var newIcon = componentIconScene.instantiate()
		newIcon.type = mat;
		newIcon.value = components[mat]
		materials.add_child(newIcon);
	texture_rect.texture = image
	nameLabel.text = itemName;
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func dissassemble():
	for item in components:
		if Components.inventory_C.has(item):
			Components.inventory_C[item] += components[item];
			Components.emit_signal("inventory_updated")
		else:
			Components.inventory_C[item] = components[item];
			Components.emit_signal("new_material_obtained",item)
	queue_free();

func submit():
	if !Components.inventory_I.has(itemName):
		return;
	if Components.inventory_I[itemName] > 1:
		Components.inventory_I[itemName] -=1;
		emit_signal("order_filled")
	pass

func build():
	var keys = []
	for key in components:
		keys.append(key);
	if !Components.inventory_C.has_all(keys):
		return
	for mat in components:
		if Components.inventory_C[mat]<components[mat]:
			return;
	for mat in components:
		Components.inventory_C[mat]-=components[mat]

func _gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			emit_signal("item_selected",self)
			match behavior:
				Items.itemBehaviors.SCRAP:
					dissassemble();
				Items.itemBehaviors.SUBMIT:
					submit();
