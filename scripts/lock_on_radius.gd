extends Area2D

@export var lock_on_radius_size: float = 40.0
@onready var lock_on_collision_shape: CollisionShape2D = $CollisionShape2D
var locked_on := false
var locked_on_enemies: Dictionary[EnemyBase, bool] = {}
var locked_on_enemy: EnemyBase = null

signal lock_on_changed(enemy: EnemyBase)

func _ready() -> void:
	lock_on_collision_shape.shape.radius = lock_on_radius_size

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("lock_onto_enemy"):
		lock_onto_enemy()

func _process(delta: float) -> void:
	# lock mouse onto enemy
	if locked_on:
		global_position = locked_on_enemy.global_position
	else:
		global_position = get_global_mouse_position()

func lock_onto_enemy() -> void:
	# search for enemies with a certain radius and lock onto the closest one within the radius
	# remove lock when player middle-clicks again
	if locked_on or locked_on_enemies.is_empty():
		locked_on = false
		locked_on_enemy = null
		lock_on_changed.emit(null) # custom signal
		return

	var closest_enemy: EnemyBase = null
	var closest_enemy_dist: float = INF

	var mouse_pos: Vector2 = get_global_mouse_position()

	# finds enemy closest to mouse
	for enemy in locked_on_enemies:
		var dist: float = mouse_pos.distance_to(enemy.global_position)
		if dist < closest_enemy_dist:
			closest_enemy = enemy
			closest_enemy_dist = dist

	locked_on = true
	locked_on_enemy = closest_enemy

	lock_on_changed.emit(locked_on_enemy) # custom signal

# signals
func _on_body_entered(body: Node2D) -> void:
	if body is EnemyBase:
		var enemy := body as EnemyBase
		locked_on_enemies[enemy] = true

func _on_body_exited(body: Node2D) -> void:
	if body is EnemyBase:
		locked_on_enemies.erase(body)
