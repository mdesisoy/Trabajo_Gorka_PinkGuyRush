extends Control

func _on_VOLVER_pressed():
	get_tree().change_scene("res://escenas/Menu.tscn")

func _on_Nivel1_pressed():
	get_tree().change_scene("res://sourcecode/Levels/Level_1.tscn")

func _on_Nivel2_pressed():
	get_tree().change_scene("res://sourcecode/Levels/Level_2.tscn")
