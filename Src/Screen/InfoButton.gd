extends TextureButton

@export var r:float = 40
#func _draw():
#	#draw_circle(Vector2.ZERO,r,Color.WHITE)
#	draw_arc(Vector2(r/2.0,r-4),r,0,2*PI,24,Color.WHITE,8)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

#func _gui_input(event):
#	if event is InputEventMouseButton:
#		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
#			print("I've been clicked D:")



func _on_pressed():
	assert(false);
	print("I've been clicked D:")
	queue_free()
	pass # Replace with function body.
