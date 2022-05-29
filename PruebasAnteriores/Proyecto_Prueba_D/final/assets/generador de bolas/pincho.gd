extends KinematicBody2D

export (int) var damage = 20
export (int) var direccion = 1

const MAX_SPEED : float = 100.0
const GRAVITY : float = 5.0

var motion := Vector2()


func _ready():
	$AnimatedSprite.scale.x = direccion

func _physics_process(_delta):
	motion.y += GRAVITY
	motion = move_and_slide(motion)
	if(position.y > 700):
		queue_free()



func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		body.health -= damage
		body.rojo()
		body.vida_cero()
