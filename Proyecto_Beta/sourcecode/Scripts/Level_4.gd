extends Node2D

var puntos := 0

func _ready():
	Audio._stop_music()
	MusicaLevel3._stop_music()
	MusicaLevel4._play_music()
