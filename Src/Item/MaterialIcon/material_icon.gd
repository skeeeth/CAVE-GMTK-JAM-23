extends HBoxContainer

@onready var label = $Label
@onready var texture_rect = $TextureRect
var type:String
var value:float = 64;

# Called when the node enters the scene tree for the first time.
func _ready():
	label.text = type + " x " + str(value)
	texture_rect.texture = Components.get_icon(type)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
