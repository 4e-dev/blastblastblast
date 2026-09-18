extends CanvasLayer

@export var cursor_image_path = "res://assets/textures/cursor/PNG/White/crosshair013.png"
@export var cursor_size = 2.0
@onready var cursor_sprite = $Sprite2D
const viewport = get_viewport()

func _ready() -> void:
	# NOTE: cursor must be above every other UI element.
	layer = 10000
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	set_custom_cursor_image()

func _process(delta: float) -> void:
	cursor_sprite.position = viewport.get_mouse_position()

func set_custom_cursor_image():
	# update image
	var cursor_image = load(cursor_image_path)
	cursor_sprite.texture = cursor_image

	# set cursor size
	cursor_sprite.scale = Vector2(cursor_size, cursor_size)
