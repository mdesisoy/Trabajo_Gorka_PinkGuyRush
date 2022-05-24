extends Node

var musica = load("res://Assets/Audio/Level3.mp3")

func _ready():
	pass

func _play_music():
	$Level3.stream = musica
	$Level3.play()
	
func _stop_music():
	$Level3.stop()
