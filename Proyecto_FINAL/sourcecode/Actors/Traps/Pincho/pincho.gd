extends Node2D

export (int) var damage = 10

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		body.health -= damage
		body.movement.y = body.JUMPFORCE/1.5
		body.rojo()
		body.vida_cero()
