extends KinematicBody2D

var health = 100
var movement= Vector2(0,0)
var on_ground= false
var is_wallsliding=false
var jump_count=0
export (int) var LIMITE_ABAJO = 500 
const SPEED=150
const GRAVITY=9
const JUMPFORCE=-230
const FLOOR=Vector2(0,-1)
var salto_infinito_caca = 0

func _physics_process(delta):
	if get_position().y > LIMITE_ABAJO:
		health = 0
		vida_cero()
	if Input.is_action_pressed("Right"):
		movement.x=SPEED
		$AnimatedSprite.play("Run")
		$AnimatedSprite.flip_h=false
	elif Input.is_action_pressed("Left"):
		movement.x=-SPEED
		$AnimatedSprite.play("Run")
		$AnimatedSprite.flip_h=true
	else:
		$AnimatedSprite.play("Idle")
	if Input.is_action_just_pressed("Up") and salto_infinito_caca<1:
		if on_ground ==true:
			movement.y=JUMPFORCE
			on_ground=false
		if jump_count<2:
			jump_count+=1
			movement.y=JUMPFORCE
			on_ground=false
			$JumpFX.stop()
			$JumpFX.play(0)
		if nextToWall():
			salto_infinito_caca+=1
	movement.y+=GRAVITY	
	movement=move_and_slide(movement,FLOOR)
	movement.x=lerp(movement.x,0,0.1)
	
	if is_on_floor() or nextToWall():
		on_ground=true
		jump_count=0
	else: 
		if movement.y<0 and jump_count==1:
			$AnimatedSprite.play("jump")
		elif movement.y<0 and jump_count==2:
			$AnimatedSprite.visible=false
			$Sprite.visible=true
			$Animaciones.play("Double")
			if Input.is_action_pressed("Right"):
				$Sprite.flip_h=false
			elif Input.is_action_pressed("Left"):
				$Sprite.flip_h=true
		elif movement.y>0:
			$Animaciones.stop()
			$Sprite.visible=false
			$AnimatedSprite.visible=true
			$AnimatedSprite.play("Fall")
			
	if nextToWall() and movement.y>20:
		$Animaciones.stop()
		$Sprite.visible=false
		$AnimatedSprite.visible=true
		movement.y=20
		if nextToRightWall():
			$AnimatedSprite.flip_h=false
			$AnimatedSprite.play("Wall")
		if nextToLeftWall():
			$AnimatedSprite.flip_h=true
			$AnimatedSprite.play("Wall")
	if !nextToWall():
		salto_infinito_caca = 0

func nextToWall():
	return nextToRightWall() or nextToLeftWall()
	
func nextToRightWall():
	return $RightWall.is_colliding()
	
func nextToLeftWall():
	return $LeftWall.is_colliding()
	
func rojo():
	$AnimationPlayer.play("rojo")

func verde():
	$AnimationPlayer.play("verde")

func amarillo():
	$AnimationPlayer.play("amarillo")
	
func rebote():
	movement.y = 0.8*JUMPFORCE

func vida_cero():
	if health <= 0:
		Gvars.vidas -= 1
		if Gvars.vidas == 0:
			get_tree().change_scene("res://sourcecode/Levels/Level_1.tscn")
			MusicaLevel2._stop_music();
			MusicaLevel3._stop_music();
			MusicaLevel4._stop_music();
			Gvars.vidas = 6
		else:
			get_tree().reload_current_scene()
