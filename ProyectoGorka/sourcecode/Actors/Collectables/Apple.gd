extends Node2D


func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		get_parent().get_parent().puntos += 1
		body.amarillo()
		$AnimatedSprite.play("collected")

func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "collected":
		queue_free()
