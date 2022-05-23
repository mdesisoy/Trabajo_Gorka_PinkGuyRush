extends Control

var music_on = true
onready var opciones = $Opciones

func _ready():
	$miusic.play(0)
	MusicaLevel1._stop_music()
	MusicaLevel2._stop_music()
	Audio._stop_music()

func _on_Salir_pressed():
	get_tree().quit()

func _on_Opciones_pressed():
	get_tree().change_scene("res://escenas/Menu.tscn")


func _on_Jugar_pressed():
	get_tree().change_scene("res://escenas/Menu.tscn")

func _on_TextureButton_button_down():
	music_on = !music_on
	if(music_on):
		Audio._play_music()
	else:
		Audio._stop_music()
