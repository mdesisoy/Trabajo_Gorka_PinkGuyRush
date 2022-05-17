extends Node2D

export (int) var damage = 20

func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
	
	
