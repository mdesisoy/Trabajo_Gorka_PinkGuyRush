extends Node2D

var puntos := 0

func _ready():
	MusicaLevel1._stop_music()
	MusicaLevel2._play_music()
