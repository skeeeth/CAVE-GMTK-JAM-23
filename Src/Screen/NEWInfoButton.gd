extends TextureButton

@export var r:float = 40

func _draw():
	draw_arc(Vector2(r/2.0,r-4),r,0,2*PI,24,Color.WHITE,8)
	pass
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	assert(false)
	pass # Replace with function body.
