extends Node2D
class_name screen

signal activated
signal deactivated
@export var index = 0;
var active = false:
	set(state):
		if state==true:
			emit_signal("activated");
		else:
			emit_signal("deactivated");
		active = state;
	get:
		return active;
		
#@onready var temp_text = $TempText
# Called when the node enters the scene tree for the first time.
func _ready():
	ScreenNavigation.screen_changed.connect(on_screen_changed)
	#temp_text.text = str(index);
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func on_screen_changed(idx):
	if idx == index:
		active = true;
	else:
		if active:
			active = false;

