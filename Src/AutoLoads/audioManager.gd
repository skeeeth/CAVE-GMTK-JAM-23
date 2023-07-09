extends Node

var num_players = 8  # How many AudioStreamPlayers to use
var master_bus = "master"  # Which bus to play audio on
var music_bus = "Music"
var sfx_bus = "Sound"

var available = []  # The list of available sfx players
var queue = []  # The queue of sounds to play


var bgm_player = null #Just one bgm for now

func _ready():
	# Create the pool of AudioStreamPlayer nodes
	for i in num_players:
		var p = AudioStreamPlayer.new()
		add_child(p)
		available.append(p)
		p.finished.connect(on_stream_finished.bind(p))
		p.bus = master_bus


func on_stream_finished(stream):
	# When a stream finishes playing a sound, make it available again
	available.append(stream)


func is_bgm_playing():
	if bgm_player && bgm_player.playing:
		return true
	return false


func stop_bgm():
	if is_bgm_playing():
		bgm_player.stop()
		available.append(bgm_player)
		bgm_player = null
	pass


func play_bgm(sound_path):
	# Plays the audio on the music bus
	var audio = {
		"sound_path": sound_path,
		"bus": music_bus,
	}
	queue.append(audio)


func play_sfx(sound_path):
	if sound_path == "":
		return;
	# Plays the audio on the sfx bus
	var audio = {
		"sound_path": sound_path,
		"bus": sfx_bus,
	}
	queue.append(audio)


func _process(delta):
	# Play a queued sound if any player is available
	if not queue.is_empty() and not available.is_empty():
		var audio = queue.pop_front()
		available[0].stream = load(audio.sound_path)
		available[0].bus = audio.bus
		available[0].play()
		#If It is a music type store it so that it can be controlled later
		if audio.bus == music_bus:
			bgm_player=available[0]
		available.pop_front()

const AUDIO_LIST={
	"dissassemble":"res://Assets/Audio/ui.wav",
	"build":"res://Assets/Audio/crafting.wav",
	"order_arrive":"",
	"order_submit":"res://Assets/Audio/order_finish1.wav",
	"expire":"",
	"transiton":"res://Assets/Audio/scene_change.wav",
}
