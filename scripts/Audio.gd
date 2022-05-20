extends Node

var musica = load("res://Assets/Audio/Background-music.ogg")

func _ready():
	pass

func _play_music():
	$MusicaMenuyNiveles.stream = musica
	$MusicaMenuyNiveles.play()
	
func _stop_music():
	$MusicaMenuyNiveles.stop()
