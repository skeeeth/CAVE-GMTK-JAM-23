extends TextureButton

@export var targetIndex = 0;
@export var leftFacing = false
@onready var triangle = $Triangle
var cycleTime:float = 0.0;
var CYCLE:float = 2.5;
var width:float = 32;
# Called when the node enters the scene tree for the first time.
func _ready():
	if !leftFacing:
		triangle.rotation_degrees = 0
	else:
		triangle.rotation_degrees = 180
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_hovered():
		cycleTime += delta
	else:
		cycleTime = 0;
	triangle.position.x = 64+ width * sin(lerp(0.0,2.0*PI,cycleTime/CYCLE))
	pass


func _on_pressed():
	ScreenNavigation.emit_signal("screen_changed",targetIndex);
	pass # Replace with function body.
