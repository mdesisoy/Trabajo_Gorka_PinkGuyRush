extends KinematicBody2D

onready var player = get_node("/root/Main/Player")
var distance2player

var preBola = preload ("res://final/assets/bola.tscn")

func _physics_process(delta):
	look_at(player.get_position())
	$Light2D/AnimationPlayer.play("color")
	$Light2D/AnimationPlayer2.play("luz")
	distance2player = self.global_position.distance_to(player.global_position)

func _on_Timer_timeout():
	if distance2player < 400:
		var bola = preBola.instance()
		get_parent().call_deferred("add_child", bola)
		bola.position.x = self.position.x
		bola.rotate(self.rotation)
