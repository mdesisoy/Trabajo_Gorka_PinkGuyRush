extends Area2D
var banana_used=false
func _on_Banana_body_entered(body):
	if not banana_used:
		body.add_Banana()
	banana_used=true
	queue_free()
