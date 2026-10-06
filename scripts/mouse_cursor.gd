extends CanvasLayer

@onready var lock_radius: Area2D = $"../LockOnRadius"
@onready var sprite: Sprite2D = $Sprite2D

const SCALE := Vector2(0.4, 0.4)

var default_texture: Texture2D = null
var locked_on_texture: Texture2D = null

var locked_on_enemy: EnemyBase = null
var rotation_speed: float = 1.5

func _ready() -> void:
	lock_radius.lock_on_changed.connect(_on_lock_on_changed)

	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

	default_texture = load("res://assets/textures/cursor/PNG/White/crosshair013.png")
	locked_on_texture = load("res://assets/textures/cursor/PNG/White/crosshair138.png")

	sprite.scale = SCALE
	sprite.texture = default_texture

func _process(delta: float) -> void:
	if locked_on_enemy:
		# need this to get proper screen coordinates
		var enemy_pos := get_viewport().get_canvas_transform() * locked_on_enemy.global_position
		sprite.position = enemy_pos
	else:
		sprite.position = get_viewport().get_mouse_position()
	set_texture(delta)

func set_texture(delta: float) -> void:
	if locked_on_enemy:
		sprite.texture = locked_on_texture
		sprite.scale = SCALE * 1.5
		sprite.rotation += rotation_speed * delta
	else:
		sprite.texture = default_texture
		sprite.scale = SCALE
		sprite.rotation = 0.0

func _on_lock_on_changed(enemy: EnemyBase) -> void:
	locked_on_enemy = enemy
