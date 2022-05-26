extends Node2D
var sonoya=false



func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		if !sonoya:
			$AudioStreamPlayer2D.play(3.7)
			sonoya=true
