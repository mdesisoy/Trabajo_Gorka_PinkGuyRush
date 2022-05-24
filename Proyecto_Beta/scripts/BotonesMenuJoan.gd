extends Control

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
