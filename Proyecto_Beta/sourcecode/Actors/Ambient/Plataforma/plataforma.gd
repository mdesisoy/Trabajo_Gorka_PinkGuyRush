extends KinematicBody2D

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		body.movement.y = -(body.JUMPFORCE/2)
		body.health -= 40
		body.rojo()
		body.vida_cero()

