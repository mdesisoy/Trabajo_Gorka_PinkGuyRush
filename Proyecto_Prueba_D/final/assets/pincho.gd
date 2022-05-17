extends KinematicBody2D

export (int) var damage = 20
export (int) var direccion = 1

const MAX_SPEED : float = 100.0
const GRAVITY : float = 25.0

var motion := Vector2()


func _ready():
	$AnimatedSprite.scale.x = direccion
	motion.x = MAX_SPEED*direccion

func _physics_process(_delta):
	motion.y += GRAVITY
	_move()
	
	motion = move_and_slide(motion)
	
func _next_to_left_wall() -> bool:
	return $leftRay.is_colliding()

func _next_to_right_wall() -> bool:
	return $rightRay.is_colliding()

func _flip():
	motion.x *= -1
	$AnimatedSprite.scale.x *= -1

func _move():
	if _next_to_right_wall() or _next_to_left_wall():
		_flip()
	pass


func _on_Area2D_area_entered(area):
	pass
