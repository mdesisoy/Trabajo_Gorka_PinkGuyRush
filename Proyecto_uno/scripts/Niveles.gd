extends Control

var music_on = true

func _on_VOLVER_pressed():
	get_tree().change_scene("res://escenas/Menu.tscn")
	
func _on_TextureButton_button_down():
	music_on = !music_on
	if(music_on):
		get_tree().get_nodes_in_group("bgm")[0].volume_db = -12.235
	else:
		get_tree().get_nodes_in_group("bgm")[0].volume_db = -80
