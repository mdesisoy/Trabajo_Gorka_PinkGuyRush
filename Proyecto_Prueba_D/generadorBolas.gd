extends KinematicBody2D

var preBola = preload("res://final/assets/generador de bolas/pincho.tscn")

func _ready():
	pass # Replace with function body.


func _on_Timer_timeout():
	var bola = preBola.instance()
	get_parent().call_deferred("add_child", bola)
	bola.position.x = self.position.x
	bola.position.y = self.position.y+40
