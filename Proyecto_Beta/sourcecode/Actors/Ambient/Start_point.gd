extends Node2D

var sono= false

func _ready():
	if !sono:
		sono=true
		$AudioStreamPlayer2D.play(1)

func _on_Timer_timeout():
	$AudioStreamPlayer2D.stop()
