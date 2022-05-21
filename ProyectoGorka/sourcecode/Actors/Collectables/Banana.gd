extends Node2D

var taken = false

func _on_Area2D_body_entered(body):
	if !taken:
		if body.is_in_group("player"):
			taken = true
			get_parent().get_parent().puntos += 2
			body.amarillo()
			$AnimatedSprite.play("collected")
			$AudioStreamPlayer2D.play()

func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "collected":
		queue_free()
