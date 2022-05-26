extends KinematicBody2D
var speed=50
var max_speed=50
var movement=Vector2()
export var direction=-1
var killed=false
var damage = 20

func _ready():
	if direction==1:
		$AnimatedSprite.flip_h=true
	$floor_checker.position.x=$CollisionShape2D.shape.get_extents().x*direction
	if get_node(".").scale.x < 0.3:
		$muerteFX.pitch_scale = 1.5
		$muerteFX.volume_db += 5
func _physics_process(delta):
	if is_on_wall():
		direction=direction*-1
		$AnimatedSprite.flip_h=not $AnimatedSprite.flip_h
		
	movement.y+=20
	if !is_on_floor():
		speed=0
	else:
		speed=max_speed
	movement.x=speed*direction
	movement=move_and_slide(movement,Vector2(0,-1))
	
func _on_top_checker_body_entered(body):
	if body.is_in_group("player") and killed==false:
		speed=0
		$AnimatedSprite.visible=false
		$Sprite.visible=true
		$AnimationPlayer.play("Die")
		$muerteFX.play(0)
		killed=true
		body.rebote()
		
func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
func _on_side_checker_body_entered(body):
	if killed==false:
		if body.is_in_group("player"):
			body.health -= damage
			body.rojo()
			body.vida_cero()
			




