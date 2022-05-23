extends Node

var musica = load("res://Assets/Audio/Level2.mp3")

func _ready():
	pass

func _play_music():
	$Level2.stream = musica
	$Level2.play()
	
func _stop_music():
	$Level2.stop()
