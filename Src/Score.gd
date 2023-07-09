extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	Score.score_changed.connect(on_score_changed)
	Score.emit_signal("score_changed")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func  on_score_changed():
	text = "You've filled " + "[color=green]" + str(Score.ordersFullfilled) + "[/color] order(s) and missed [color=red]" + str(Score.ordersMissed)
