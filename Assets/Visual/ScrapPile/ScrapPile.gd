extends Container
var scrapScene = preload("res://Assets/Visual/ScrapPile/scrapScene.tscn")
@export var count =  400
var images = [
	preload("res://Assets/Visual/Scrap/Arrow.png"),
	preload("res://Assets/Visual/Scrap/Bow.png"),
	preload("res://Assets/Visual/Scrap/Spear.png"),
	preload("res://Assets/Visual/Scrap/Sword.png"),
]
# Called when the node enters the scene tree for the first time.
func _ready():
	if visible:
		for i in range(0,count):
			var newScrap = scrapScene.instantiate();
			var image = images.pick_random()
			newScrap.position.x = randf_range(0,size.x);
			newScrap.position.y = randf_range(0,size.y);
			newScrap.texture = image
			add_child(newScrap)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
