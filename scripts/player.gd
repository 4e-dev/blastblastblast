extends CharacterBody2D

@export var speed := 600.0

func _physics_process(delta):
	# Movement (WASD)
	var direction := Input.get_vector("move_left","move_right", "move_up", "move_down");
	velocity = direction.normalized() * speed
	move_and_slide()
