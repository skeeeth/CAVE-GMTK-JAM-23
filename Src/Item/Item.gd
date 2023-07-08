extends VBoxContainer
class_name Item
 
signal item_selected(item)

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
		if Components.inventory.has(item):
			Components.inventory[item] += components[item];
			Components.emit_signal("inventory_updated")
		else:
			Components.inventory[item] = components[item];
			Components.emit_signal("new_material_obtained",item)
	queue_free();

func submit():
	pass


func _gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			emit_signal("item_selected",self)
			match behavior:
				Items.itemBehaviors.SCRAP:
					dissassemble();
				Items.itemBehaviors.SUBMIT:
					submit();
