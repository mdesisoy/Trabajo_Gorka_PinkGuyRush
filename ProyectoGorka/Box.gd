extends Area2D
var played0=false
var played1=false
var entered=false
func _on_Box_body_entered(body):
	if (body.movement.y<position.y):
		if(!entered):
			$AnimatedSprite.play("hit")
			played0=true
			entered=true
			body.rebote(position.y)
func _on_AnimatedSprite_animation_finished():
	if(played1):
		queue_free()
	if(played0):
		$AnimatedSprite.stop()
		$AnimatedSprite.play("break")
		played1=true
	
	
	
