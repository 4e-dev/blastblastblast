extends CharacterBody2D

@export var speed := 600.0
@export var aim_distance := 180.0

@onready var aim_triangle := $AimTriangle

func _process(delta):
	# Aim triangle follows mouse.
	# Used to visualize where player is aiming.
	var mouse_pos = get_global_mouse_position()
	var direction = global_position.direction_to(mouse_pos)
	aim_triangle.position = direction * aim_distance
	aim_triangle.rotation = direction.angle()

func _physics_process(delta):
	# Movement (WASD)
	var direction := Input.get_vector("move_left", "move_right", "move_up", "move_down");
	velocity = direction.normalized() * speed
	move_and_slide()
