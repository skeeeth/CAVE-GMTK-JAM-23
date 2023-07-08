extends TabContainer

const UPPER_Y = 100;
const LOWER_Y = 498;
var previousTab = 0;
# Called when the node enters the scene tree for the first time.
func _ready():
	ScreenNavigation.screen_changed.connect(on_screen_changed)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_tab_selected(tab):
	pass
#	if previousTab == tab:
#		if position.y == UPPER_Y:
#			position.y = LOWER_Y
#		else:
#			position.y = UPPER_Y;
#	previousTab = tab;
#	pass # Replace with function body.

func on_screen_changed(idx):
	position.x = -960 + (1920*idx)
