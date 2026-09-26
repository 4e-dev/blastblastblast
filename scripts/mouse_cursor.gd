extends CanvasLayer

@export var cursor_size: float = 0.3
@onready var cursor_sprite: Sprite2D = $Sprite2D
@onready var lock_on_radius: Area2D = $"../LockOnRadius"

var regular_cursor_path: String = "res://assets/textures/cursor/PNG/White/crosshair013.png"
var locked_on_cursor_path: String = "res://assets/textures/cursor/PNG/White/crosshair138.png"

var regular_cursor = null
var locked_on_cursor = null

var locked_on_enemy: EnemyBase = null

var rotation_speed: float = 1.5

func _ready() -> void:
	# connect custom signal
	lock_on_radius.lock_on_changed.connect(_on_lock_on_changed)

	layer = 10000
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

	# load cursor textures
	regular_cursor = load(regular_cursor_path)
	locked_on_cursor = load(locked_on_cursor_path)

	# update sprite
	cursor_sprite.scale = Vector2(cursor_size, cursor_size)
	cursor_sprite.texture = regular_cursor

func _process(delta: float) -> void:
	if locked_on_enemy:
		# need this to get proper screen coordinates
		var enemy_pos := get_viewport().get_canvas_transform() * locked_on_enemy.global_position
		cursor_sprite.position = enemy_pos
		cursor_sprite.texture = locked_on_cursor
		cursor_sprite.scale = Vector2(cursor_size*2.5, cursor_size*2.5)
		cursor_sprite.rotation += rotation_speed * delta
	else:
		cursor_sprite.position = get_viewport().get_mouse_position()
		cursor_sprite.texture = regular_cursor
		cursor_sprite.scale = Vector2(cursor_size, cursor_size)
		cursor_sprite.rotation = 0

#func set_cursor_image(path: String,locked_on: bool = false) -> void:
#	# set texture
#	var texture = load(path)
#	cursor_sprite.texture = texture
#
#	# set cursor size
#	cursor_sprite.scale = Vector2(cursor_size, cursor_size)


func _on_lock_on_changed(enemy: EnemyBase) -> void:
	locked_on_enemy = enemy
