extends KinematicBody2D

var velocity = Vector2(0,0)
const SPEED = 500
const GRAVITY = 31
const JUMPFORCE = -1500



func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		$spirit.play("walk")
		velocity.x = SPEED
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		$spirit.play("walk")
	else:
		$spirit.play("idle")
	if not is_on_floor():
		$spirit.play("jump1")
		
	velocity.y = velocity.y + GRAVITY
	if Input.is_action_just_pressed("space"):
		
		velocity.y = JUMPFORCE 
		
		
	velocity = move_and_slide(velocity,Vector2.UP)
	velocity.x = lerp(velocity.x, 0, 0.2)

