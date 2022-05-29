extends KinematicBody2D

onready var player = get_node("/root/"+str(get_tree().get_current_scene().get_name())+"/Player")
var distance2player

var preBola = preload ("res://sourcecode/Actors/Traps/Cañon/bola.tscn")

func _physics_process(delta):
	look_at(player.get_position())
	distance2player = self.global_position.distance_to(player.global_position)

func _on_Timer_timeout():
	if distance2player < 480:
		$AudioStreamPlayer2D.stop()
		var bola = preBola.instance()
		get_parent().call_deferred("add_child", bola)
		bola.position.x = self.position.x
		bola.rotate(self.rotation)
		$AudioStreamPlayer2D.play(0.3)
		
