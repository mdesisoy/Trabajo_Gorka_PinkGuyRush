extends Node2D


var puntos := 0

func _ready():
	MusicaLevel2._stop_music()
	MusicaLevel3._play_music()
