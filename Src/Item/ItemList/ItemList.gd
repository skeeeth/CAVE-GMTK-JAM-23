extends Container
class_name ItemQueue

signal child_selected(item)

var itemScene = preload("res://Src/Item/Item.tscn")
var orderTimerScene = preload("res://Src/Order/orderTimer.tscn")
@onready var timer = $Timer
@export var interval:float = 5.5;
@export var itemBehavior = Items.itemBehaviors.SCRAP
@export var rolls:int = 3;
var itemProbablityList = []
var totalWeight = 0;
# Called when the node enters the scene tree for the first time.
func _ready():
	timer.wait_time = interval
	var list
	match itemBehavior:
		Items.itemBehaviors.SCRAP:
			list = Items.scrap;
		Items.itemBehaviors.SUBMIT:
			list = Items.order;
		Items.itemBehaviors.SCRAP:
			list = Items.order;
	for itemName in list:
		totalWeight+= list[itemName]["weight"]
		itemProbablityList.append([totalWeight,itemName])
	reroll(rolls)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func reroll(count):
	var items = get_children()
	for i in items:
		if i is Item:
			i.queue_free();
	for i in range(0,count):
		var roll = randi_range(1,totalWeight);
		var j = 0
		while roll>itemProbablityList[j][0]:
			j+=1;
		var newItem = add_Item(itemProbablityList[j][1]);
		if itemBehavior == Items.itemBehaviors.SUBMIT:
			add_order_timer(newItem);
		print(roll)
		print(itemProbablityList[j][0])
		print(itemProbablityList[j][1])
	pass;

func add_Item(key):
	var list
	match itemBehavior:
		Items.itemBehaviors.SCRAP:
			list = Items.scrap;
		Items.itemBehaviors.SUBMIT:
			list = Items.order;
		Items.itemBehaviors.SUPPLY:
			list = Items.order;
	var newItem:Item = itemScene.instantiate()
	newItem.components = list[key]["materials"]
	newItem.image = list[key]["img"]
	newItem.itemName = key
	newItem.behavior = itemBehavior
	newItem.item_selected.connect(on_item_selected)
	newItem.name = key
	add_child(newItem);
	return newItem

func on_item_selected(item):
	emit_signal("child_selected",item)
	#print(_item)
	pass

func _on_timer_timeout():
	reroll(rolls);
	pass # Replace with function body.
	
func add_order_timer(item:Item):
	var timeDisplay = orderTimerScene.instantiate()
	timeDisplay.duration = Items.order[item.itemName]["time"]
	timeDisplay.parentItem = item;
	item.add_child(timeDisplay);
