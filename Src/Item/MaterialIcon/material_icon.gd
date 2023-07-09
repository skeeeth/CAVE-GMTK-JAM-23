extends HBoxContainer

@onready var label = $Label
@onready var texture_rect = $TextureRect
var type:String
var value:float:
	set(newValue):
		value = newValue
		if label != null:
			label.text = type + " x " + str(value)
	get:
		return value
	

# Called when the node enters the scene tree for the first time.
func _ready():
	label.text = type + " x " + str(value)
	if Items.order.has(type):
		texture_rect.texture = Items.order[type]["img"]
	else:
		texture_rect.texture = Items.materials[type]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
