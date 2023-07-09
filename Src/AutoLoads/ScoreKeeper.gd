extends Node
signal score_changed
var ordersMissed = 0:
	set(newValue):
		emit_signal("score_changed")
		ordersMissed = newValue
	get:
		return ordersMissed
var ordersFullfilled = 0:
	set(newValue):
		emit_signal("score_changed")
		ordersFullfilled = newValue
	get:
		return ordersFullfilled
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
