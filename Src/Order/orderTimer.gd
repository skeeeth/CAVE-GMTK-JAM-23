extends VBoxContainer

var duration = 0;
@onready var timer = $Timer
@onready var progress_bar = $ProgressBar
var parentItem
# Called when the node enters the scene tree for the first time.
func _ready():
	timer.wait_time = duration;
	timer.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	progress_bar.value = 1.0-timer.time_left/timer.wait_time;
	pass


func _on_timer_timeout():
	parentItem.queue_free();
	
	pass # Replace with function body.
