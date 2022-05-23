extends Node2D

var damage = 30

func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()


func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		body.health -= damage
		body.rojo()
		body.vida_cero()
		queue_free()

