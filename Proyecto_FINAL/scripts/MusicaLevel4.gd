extends Node

var musica = load("res://Assets/Audio/Level4.mp3")

func _ready():
	pass

func _play_music():
	$Level4.stream = musica
	$Level4.play()
	
func _stop_music():
	$Level4.stop()
