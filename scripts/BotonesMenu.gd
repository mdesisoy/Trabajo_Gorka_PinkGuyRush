extends Control

var music_on = true
onready var opciones = $Opciones

func _on_Salir_pressed():
	get_tree().quit()

func _on_Opciones_pressed():
	opciones.popup_centered()

func _on_Jugar_pressed():
	get_tree().change_scene("res://escenas/Niveles.tscn")


func _on_TextureButton_button_down():
	music_on = !music_on
	if(music_on):
		get_tree().get_nodes_in_group("bgm")[0].volume_db = -12.235
	else:
		get_tree().get_nodes_in_group("bgm")[0].volume_db = -80
