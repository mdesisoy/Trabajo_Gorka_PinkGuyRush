extends KinematicBody2D

var movement= Vector2(0,0)
var on_ground=false
var is_wallsliding=false
var jump_count=0
var Apple_count=0;
var Banana_count=0;
const SPEED=100
const GRAVITY=9
const JUMPFORCE=-330
const FLOOR=Vector2(0,-1)
func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		movement.x=SPEED
		$AnimatedSprite.play("Run")
		$AnimatedSprite.flip_h=false
	elif Input.is_action_pressed("ui_left"):
		movement.x=-SPEED
		$AnimatedSprite.play("Run")
		$AnimatedSprite.flip_h=true
	else:
		$AnimatedSprite.play("Idle")
	if Input.is_action_just_pressed("ui_up"):
		if on_ground ==true:
			movement.y=JUMPFORCE
			on_ground=false
		if jump_count<2:
			jump_count+=1
			movement.y=JUMPFORCE
			on_ground=false
		
	movement.y+=GRAVITY	
	movement=move_and_slide(movement,FLOOR)
	movement.x=lerp(movement.x,0,0.1)
	
	if is_on_floor():
		on_ground=true
		jump_count=0
	else: 
		if movement.y<0 and jump_count==1:
			$AnimatedSprite.play("jump")
		elif movement.y<0 and jump_count==2:
			$AnimatedSprite.visible=false
			$Sprite.visible=true
			$Animaciones.play("Double")
			if Input.is_action_pressed("ui_right"):
				$Sprite.flip_h=false
			elif Input.is_action_pressed("ui_left"):
				$Sprite.flip_h=true
		elif movement.y>0:
			$Animaciones.stop()
			$Sprite.visible=false
			$AnimatedSprite.visible=true
			$AnimatedSprite.play("Fall")
func add_Apple():
	Apple_count+=1
	print("Tengo ",Apple_count," manzanas")
func add_Banana():
	Apple_count+=1
	print("Tengo ",Banana_count," platanos")
func ouch(var enemyx):
	$AnimatedSprite.visible=false
	$Sprite2.visible=true
	$Animaciones.play("Die")
	if movement.x<enemyx:
		movement.x=-300
	elif movement.x>enemyx:
		movement.x=300
	$Timer.start();

