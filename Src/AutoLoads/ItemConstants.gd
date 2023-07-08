extends Node

var scrap = {
	"Sample":{
		"weight": 0,
		"img": preload("res://Assets/icon.svg"), #SAMPLE
		"materials":{
			}
		},
	"Sword":{
		"weight": 10,
		"img": preload("res://Assets/icon.svg"), #SAMPLE
		"materials":{
			"Iron": 4,
			"Wood": 1,
			"Leather": 1,
			}
		},
	"Greatsword":{
		"weight": 2,
		"img": preload("res://Assets/icon.svg"), #SAMPLE
		"materials":{
			"Iron": 6,
			"Wood": 1,
			"Leather": 1,
			},
		},
	"Spear":{
		"weight": 5,
		"img": preload("res://Assets/icon.svg"), #SAMPLE
		"materials":{
			"Iron": 1,
			"Wood": 2
			}
		},
	}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
