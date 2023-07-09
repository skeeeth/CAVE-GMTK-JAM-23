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
		"img": preload("res://Assets/Visual/ScrapIcons/SwordIcon.png"), 
		"materials":{
			"Iron": 4,
			"Wood": 1,
		#	"Leather": 1,
			}
		},
	"Greatsword":{
		"weight": 2,
		"img": preload("res://Assets/Visual/ScrapIcons/Greatsword.png"), 
		"materials":{
			"Iron": 6,
			"Wood": 1,
		#	"Leather": 1,
			},
		},
	"Spear":{
		"weight": 4,
		"img": preload("res://Assets/Visual/ScrapIcons/SpearIcon.png"),
		"materials":{
			"Steel": 1,
			"Wood": 2
			}
		},
	"Arrow":{
		"weight": 6,
		"img": preload("res://Assets/Visual/ScrapIcons/ArrowIcon.png"),
		"materials":{
			"Flint":1,
			"Wood":1,
		#	"Feather":1,
			}
		},
	"Bow":{
		"weight": 2,
		"img": preload("res://Assets/Visual/ScrapIcons/BowIcon.png"), 
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
		"img": preload("res://Assets/Visual/Items/crutchIcon.png"), #SAMPLE
		"materials":{
			"Wood": 2,
			}
		},
	"Hoe":{
		"weight": 8,
		"time": 50,
		"img": preload("res://Assets/Visual/Items/hoeIcon.png"), 
		"materials":{
			"Iron": 1,
			"Wood": 2,
			}
		},
	"Rake":{
		"weight": 6,
		"time": 50,
		"img": preload("res://Assets/Visual/Items/rakeIcon.png"), 
		"materials":{
			"Iron": 3,
			"Wood": 2,
			}
		},
	"Fire Starter":{
		"weight": 5,
		"time": 60,
		"img": preload("res://Assets/Visual/Materials/fLINT.png"), 
		"materials":{
			"Flint":1,
			"Steel":1
			}
		},
	"Fishing Rod":{
		"weight": 4,
		"time": 90,
		"img": preload("res://Assets/Visual/Items/PoleIcon.png"),
		"materials":{
			"Iron": 1,
			"String": 3,
			}
		},
}
var materials:Dictionary = {
	"Iron": preload("res://Assets/Visual/Materials/IRON.png"), #SAMPLE,
	"Steel": preload("res://Assets/Visual/Materials/SteelIron.png"), #SAMPLE,
	"Wood": preload("res://Assets/Visual/Materials/Wood.png"), #SAMPLE,
	"String": preload("res://Assets/Visual/Materials/Spools.png"), #SAMPLE,
	"Flint": preload("res://Assets/Visual/Materials/fLINT.png"), #SAMPLE,
	#"Leather": preload("res://Assets/icon.svg"), #SAMPLE,
	#"Feather": preload("res://Assets/icon.svg"), #SAMPLE,
}
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
