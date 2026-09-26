extends CanvasLayer

@export var cursor_image_path: String = "res://assets/textures/cursor/PNG/White/crosshair013.png"
@export var cursor_size: float = 0.3
@onready var cursor_sprite: Sprite2D = $Sprite2D
@onready var lock_on_radius: Area2D = $"../LockOnRadius"

var locked_on_enemy: EnemyBase = null

func _ready() -> void:
	lock_on_radius.lock_on_changed.connect(_on_lock_on_changed)
	layer = 10000
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	set_custom_cursor_image()

func _process(delta: float) -> void:
	if locked_on_enemy:
		var screen_pos := get_viewport().get_canvas_transform() * locked_on_enemy.global_position
		cursor_sprite.position = screen_pos
	else:
		cursor_sprite.position = get_viewport().get_mouse_position()

func set_custom_cursor_image() -> void:
	# update image
	var cursor_image = load(cursor_image_path)
	cursor_sprite.texture = cursor_image

	# set cursor size
	cursor_sprite.scale = Vector2(cursor_size, cursor_size)

func _on_lock_on_changed(enemy: EnemyBase) -> void:
	locked_on_enemy = enemy
