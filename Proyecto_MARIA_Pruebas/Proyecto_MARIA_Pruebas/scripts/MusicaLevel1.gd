extends Node

var musica = load("res://Assets/Audio/Level1.mp3")

func _ready():
	pass

func _play_music():
	$Level1.stream = musica
	$Level1.play()
	
func _stop_music():
	$Level1.stop()
