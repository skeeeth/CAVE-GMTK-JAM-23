extends Node

signal screen_changed(index)

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_changed.connect(on_screen_change)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func on_screen_change(_idx):
	AudioManager.play_sfx(AudioManager.AUDIO_LIST.transiton)
