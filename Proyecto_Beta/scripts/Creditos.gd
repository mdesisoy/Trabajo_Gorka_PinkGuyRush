extends Control

func _ready():
	OpcionesGlobales.fin = true;
	$Fondo/Panel/AnimationPlayer.play("Creditos")
	set_process_input(true)
	
func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == 1:
		get_tree().change_scene("res://escenas/Niveles.tscn")
