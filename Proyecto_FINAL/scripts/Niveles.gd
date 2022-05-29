extends Control

func _ready():
	MusicaLevel2._stop_music() #ult level

func _on_VOLVER_pressed():
	get_tree().change_scene("res://escenas/Menu.tscn")

func _on_Nivel1_pressed():
	get_tree().change_scene("res://sourcecode/Levels/Level_1.tscn")

func _on_Nivel2_pressed():
	get_tree().change_scene("res://sourcecode/Levels/Level_2.tscn")


func _on_Nivel3_pressed():
	get_tree().change_scene("res://sourcecode/Levels/Level_3.tscn")


func _on_Nivel4_pressed():
	get_tree().change_scene("res://sourcecode/Levels/Level_4.tscn")
