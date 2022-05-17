extends Area2D
var apple_used=false
func _on_Apple_body_entered(body):
	if not apple_used:
		body.add_Apple()
	apple_used=true
	queue_free()
