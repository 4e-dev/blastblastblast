extends Polygon2D

@export var aim_indicator_size: float = 40.0
@export var aim_indicator_distance: float = 150.0

func _ready():
	# Generates a triangle polygon.
	var half: float = aim_indicator_size/2
	polygon = PackedVector2Array([
		Vector2(aim_indicator_size, 0),
		Vector2(-half, -half),
		Vector2(-half, half)
	])

func _process(delta):
	# Aim indicator follows mouse.
	# Used to visualize where player is aiming.
	var mouse_pos: Vector2 = get_global_mouse_position()
	var direction: Vector2 = get_parent().global_position.direction_to(mouse_pos)

	position = direction * aim_indicator_distance
	rotation = direction.angle()
