extends VBoxContainer

@onready var item_list = $".."
@onready var timer = $"../Timer"
@onready var items_taken = $ItemsTaken
@onready var label = $ItemsTaken/Label
@onready var take_bar = $ItemsTaken/TakeBar
@onready var roll_progress = $RollProgress
var taken = 0:
	set(newValue):
		taken = newValue
		label.text = str(taken) + " / " + str(takeLimit);
		take_bar.value = taken;
		if taken == takeLimit:
			var items = item_list.get_children();
			for i in items:
				if i is Item:
					i.mouse_filter = Control.MOUSE_FILTER_IGNORE
	get:
		return taken;
@export var takeLimit = 2
# Called when the node enters the scene tree for the first time.
func _ready():
	item_list.child_selected.connect(on_item_taken);
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	roll_progress.value = timer.time_left/timer.wait_time;
	pass

func on_item_taken(_item):
	taken+=1;


func _on_timer_timeout():
	taken = 0;
	pass # Replace with function body.
