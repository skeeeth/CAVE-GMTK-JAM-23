extends ItemQueue


# Called when the node enters the scene tree for the first time.
func _ready():
	for item in Items.order:
		if item != "Sample":
			add_Item(item)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func reroll(rolls):
	pass
