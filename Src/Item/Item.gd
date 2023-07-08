extends VBoxContainer
class_name Item
 

@onready var materials = $Materials
@onready var texture_rect = $TextureRect
@onready var nameLabel = $Name
@export var components:Dictionary = {}
@export var image:Texture2D
var itemName:String
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
		else:
			Components.inventory[item] = components[item];

#TEMP
#func _unhandled_input(event):
#	dissassemble();
