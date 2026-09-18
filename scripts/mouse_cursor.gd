extends CanvasLayer

@export var cursor_image_path = "res://assets/textures/cursor/PNG/White/crosshair013.png"
@export var cursor_size = 2.0
@export var lock_on_radius_size = 200.0
@onready var cursor_sprite = $Sprite2D
@onready var lock_on_area2d = $LockOnRadius
@onready var lock_on_collision_shape = $LockOnRadius/CollisionShape2D

# virtual functions
func _ready() -> void:
	# NOTE: cursor must be above every other UI element.
	layer = 10000
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	lock_on_collision_shape.shape.radius = lock_on_radius_size
	set_custom_cursor_image()

func _input(event):
	if event.is_action_pressed("lock_onto_enemy"):
		lock_onto_enemy()

func _process(delta: float) -> void:
	var mouse_pos = get_viewport().get_mouse_position()
	cursor_sprite.position = mouse_pos
	lock_on_area2d.position = mouse_pos

# custom functions
func lock_onto_enemy():
	# TODO: working on this function
	print("locking onto closest enemy")

	# search for enemies with a certain radius and lock onto the closest one within the radius


func set_custom_cursor_image():
	# update image
	var cursor_image = load(cursor_image_path)
	cursor_sprite.texture = cursor_image

	# set cursor size
	cursor_sprite.scale = Vector2(cursor_size, cursor_size)

# signals
func _on_lock_on_radius_body_entered(body):
	if body is EnemyBase:
		print("enemy entered lock on radius")
