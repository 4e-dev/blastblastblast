extends CanvasLayer

@onready var cursor_sprite = $Sprite2D
@export var cursor_size = 2.0

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	layer = 10000 # NOTE: cursor must be above every other UI element.
	set_custom_cursor_image()

func _process(delta: float) -> void:
	cursor_sprite.position = get_viewport().get_mouse_position()
	cursor_sprite.scale = Vector2(cursor_size, cursor_size)

func set_custom_cursor_image():
	var cursor_image = load("res://assets/textures/cursor/PNG/White/crosshair013.png")
	cursor_sprite.texture = cursor_image
