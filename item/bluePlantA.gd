extends Area2D

func _physics_process(_delta):
	$AnimationPlayer2.play("shrink")

func _on_bluePlantA_body_entered(_body):
	set_collision_mask_bit(0, false)
	$AnimationPlayer.play("minimise")
	

func _on_AnimationPlayer_animation_finished(_minimise):
	queue_free()
