extends Control

var is_paused = false setget set_is_paused
onready var opciones = $Opciones

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		self.is_paused = !is_paused

func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused


func _on_Reanudar_pressed():
	self.is_paused = false


func _on_Salir_pressed():
	self.is_paused = false
	get_tree().change_scene("res://escenas/Menu.tscn")


func _on_Opciones_pressed():
	opciones.popup_centered()
