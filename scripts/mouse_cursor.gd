extends CanvasLayer

@export var cursor_image_path: String = "res://assets/textures/cursor/PNG/White/crosshair013.png"
@export var cursor_size: float = 2.0
@export var lock_on_radius_size: float = 200.0
@onready var cursor_sprite: Sprite2D = $Sprite2D
@onready var lock_on_area2d: Area2D = $LockOnRadius
@onready var lock_on_collision_shape: CollisionShape2D = $LockOnRadius/CollisionShape2D
var locked_on := false
var locked_on_enemies: Dictionary[EnemyBase, bool] = {}
var locked_on_enemy: EnemyBase = null

# virtual functions
func _ready() -> void:
	layer = 10000
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	lock_on_collision_shape.shape.radius = lock_on_radius_size
	set_custom_cursor_image()

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("lock_onto_enemy"):
		lock_onto_enemy()

func _process(delta: float) -> void:
	# lock mouse onto enemy
	var mouse_pos: Vector2 = locked_on_enemy.position if locked_on else get_viewport().get_mouse_position()
	cursor_sprite.position = mouse_pos
	lock_on_area2d.position = mouse_pos

# custom functions
func lock_onto_enemy() -> void:
	# search for enemies with a certain radius and lock onto the closest one within the radius

	# remove lock when player middle-clicks again
	if locked_on or locked_on_enemies.is_empty():
		locked_on = false
		locked_on_enemy = null
		return

	var closest_enemy: EnemyBase = null
	var closest_enemy_dist: float = INF
	var mouse_pos: Vector2 = get_viewport().get_mouse_position()

	# finds enemy closest to mouse
	for enemy in locked_on_enemies:
		var dist: float = mouse_pos.distance_to(enemy.position)
		if dist < closest_enemy_dist:
			closest_enemy = enemy
			closest_enemy_dist = dist

	locked_on = true
	locked_on_enemy = closest_enemy

func set_custom_cursor_image() -> void:
	# update image
	var cursor_image = load(cursor_image_path)
	cursor_sprite.texture = cursor_image

	# set cursor size
	cursor_sprite.scale = Vector2(cursor_size, cursor_size)

# signals
func _on_lock_on_radius_body_entered(body: CollisionObject2D) -> void:
	if body is EnemyBase:
		var enemy := body as EnemyBase
		locked_on_enemies[enemy] = true

func _on_lock_on_radius_body_exited(body: CollisionObject2D) -> void:
	if body is EnemyBase:
		locked_on_enemies.erase(body)
