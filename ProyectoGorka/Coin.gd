extends Area2D
var coin_used=false
func _on_Coin_body_entered(body):
	$AnimationPlayer.play("BounceCoin")
	if not coin_used:
		body.add_Coin()
	coin_used=true
func _on_AnimationPlayer_animation_finished(name):
	queue_free()
	
	

