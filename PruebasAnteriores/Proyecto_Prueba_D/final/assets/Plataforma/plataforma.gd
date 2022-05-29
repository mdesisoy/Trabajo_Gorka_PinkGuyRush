extends KinematicBody2D




func _on_deadBox_body_entered(body):
	if body.is_in_group("player"):
		body.motion.y = -(body.JUMP_H/2)
		body.motion.x = -50
		body.health -= 40
		body.rojo()
		body.vida_cero()
