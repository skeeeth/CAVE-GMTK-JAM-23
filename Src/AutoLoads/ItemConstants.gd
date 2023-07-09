extends Node
enum itemBehaviors{SCRAP,SUBMIT,SUPPLY}
var scrap:Dictionary = {
	"Sample":{
		"weight": 0,
		"img": preload("res://Assets/icon.svg"), #SAMPLE
		"materials":{
			}
		},
	"Sword":{
		"weight": 8,
		"img": preload("res://Assets/icon.svg"), #SAMPLE
		"materials":{
			"Iron": 4,
			"Wood": 1,
		#	"Leather": 1,
			}
		},
	"Greatsword":{
		"weight": 2,
		"img": preload("res://Assets/icon.svg"), #SAMPLE
		"materials":{
			"Iron": 6,
			"Wood": 1,
		#	"Leather": 1,
			},
		},
	"Spear":{
		"weight": 4,
		"img": preload("res://Assets/icon.svg"), #SAMPLE
		"materials":{
			"Steel": 1,
			"Wood": 2
			}
		},
	"Arrow":{
		"weight": 6,
		"img": preload("res://Assets/icon.svg"), #SAMPLE
		"materials":{
			"Flint":1,
			"Wood":1,
		#	"Feather":1,
			}
		},
	"Bow":{
		"weight": 2,
		"img": preload("res://Assets/icon.svg"), #SAMPLE
		"materials":{
			"String":2,
			"Wood":1,
			}
		},
	}

var order:Dictionary = {
	"Sample":{
		"weight": 0,
		"time": 60,
		"img": preload("res://Assets/icon.svg"), #SAMPLE
		"materials":{
			}
		},
	"Crutches":{
		"weight": 12,
		"time": 90,
		"img": preload("res://Assets/icon.svg"), #SAMPLE
		"materials":{
			"Iron": 5,
			"Wood": 2,
			}
		},
	"Hoe":{
		"weight": 10,
		"time": 50,
		"img": preload("res://Assets/icon.svg"), #SAMPLE
		"materials":{
			"Iron": 1,
			"Wood": 2,
			}
		},
	"Fire Starter":{
		"weight": 5,
		"time": 60,
		"img": preload("res://Assets/icon.svg"), #SAMPLE
		"materials":{
			"Flint":1,
			"Steel":1
			}
		},
	"Fishing Rod":{
		"weight": 4,
		"time": 90,
		"img": preload("res://Assets/icon.svg"), #SAMPLE
		"materials":{
			"Iron": 1,
			"String": 3,
			}
		},
}
var materials:Dictionary = {
	"Iron": preload("res://Assets/icon.svg"), #SAMPLE,
	"Steel": preload("res://Assets/icon.svg"), #SAMPLE,
	"Wood": preload("res://Assets/icon.svg"), #SAMPLE,
	"String": preload("res://Assets/icon.svg"), #SAMPLE,
	"Flint": preload("res://Assets/icon.svg"), #SAMPLE,
	#"Leather": preload("res://Assets/icon.svg"), #SAMPLE,
	#"Feather": preload("res://Assets/icon.svg"), #SAMPLE,
}
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
