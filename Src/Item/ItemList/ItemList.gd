extends HBoxContainer

var itemScene = preload("res://Src/Item/Item.tscn")
@onready var timer = $Timer
@export var interval:float = 5.5;
var itemProbablityList = []
var totalWeight = 0;
# Called when the node enters the scene tree for the first time.
func _ready():
	timer.wait_time = interval
	for itemName in Items.scrap:
		totalWeight+= Items.scrap[itemName]["weight"]
		itemProbablityList.append([totalWeight,itemName])
	reroll()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func reroll():
	var items = get_children()
	for i in items:
		if i is Item:
			i.queue_free();
	for i in range(0,3):
		var roll = randi_range(1,totalWeight);
		var j = 0
		while roll>itemProbablityList[j][0]:
			j+=1;
		add_Item(itemProbablityList[j][1]);
		print(roll)
		print(itemProbablityList[j][0])
		print(itemProbablityList[j][1])
	pass;

func add_Item(key):
	var newItem:Item = itemScene.instantiate()
	newItem.components = Items.scrap[key]["materials"]
	newItem.image = Items.scrap[key]["img"]
	newItem.itemName = key
	add_child(newItem);



func _on_timer_timeout():
	reroll();
	pass # Replace with function body.
