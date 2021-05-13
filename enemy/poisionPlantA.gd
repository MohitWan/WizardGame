extends KinematicBody2D

var velocity = Vector2()
export var  direction = -1
export var detect_clif = true
var speed = 100

func _physics_process(delta):
	
	if $flore_checker.is_colliding() and detect_clif:
		direction = direction * -1
	velocity.x = speed * direction
	velocity.y += 30
	velocity = move_and_slide(velocity, Vector2.UP)

