extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready():
	ScreenNavigation.screen_changed.connect(on_screen_changed);
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func on_screen_changed(idx):
	position.x = 1920 * idx;
	pass 
