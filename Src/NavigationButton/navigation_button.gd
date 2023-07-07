extends TextureButton

@export var targetIndex = 0;
@export var leftAlign = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	ScreenNavigation.emit_signal("screen_changed",targetIndex);
	pass # Replace with function body.
