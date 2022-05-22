extends KinematicBody2D

var vida = 20

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		if body.health < 100 and body.health <= 80:
			body.health += vida
		elif body.health < 100 and body.health > 80:
			body.health += 100-body.health
		body.verde()
		queue_free()
