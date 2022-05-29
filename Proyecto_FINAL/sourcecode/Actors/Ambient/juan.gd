extends Node2D

var puedejoder = true
var puedesonar = true
func _ready():
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		if puedesonar:
			$AudioStreamPlayer.play(0)
			$Timer.start()
			puedesonar=false
		if puedejoder:
			$AnimationPlayer.play("tapapantalla")
			puedejoder=false

func _on_AudioStreamPlayer_finished():
	puedesonar=true


func _on_Timer_timeout():
	$AudioStreamPlayer.stop()
