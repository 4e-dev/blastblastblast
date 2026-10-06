extends CharacterBody2D

@export var speed := 150.0
@onready var animated_sprite_2d = $AnimatedSprite2D

func _ready():
	pass

func _physics_process(delta):
	# Movement (WASD)
	var direction := Input.get_vector("move_left","move_right", "move_up", "move_down");

	# set animation
	var running = direction != Vector2.ZERO
	if running:
		animated_sprite_2d.play("run")
	else:
		animated_sprite_2d.play("idle")

	# looking direction
	if direction.x == 1.0:
		animated_sprite_2d.flip_h = false
	elif direction.x == -1.0:
		animated_sprite_2d.flip_h = true

	velocity = direction.normalized() * speed
	move_and_slide()
