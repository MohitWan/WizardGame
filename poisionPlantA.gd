extends KinematicBody2D

var velocity = Vector2()
export var  direction = -1
export var detect_clif = true
var speed = 100

func _physics_process(_delta):
	
	if not $flore_checker.is_colliding() and detect_clif:
		direction = direction * -1
		$flore_checker.position.x = $CollisionShape2D.shape.get_extents().x * direction
	velocity.x = speed * direction
	velocity.y += 30
	velocity = move_and_slide(velocity, Vector2.UP)



func _on_side_body_entered(_body):
	get_tree().change_scene("res://Level1.tscn")


func _on_top_body_entered(_body):
	queue_free()
